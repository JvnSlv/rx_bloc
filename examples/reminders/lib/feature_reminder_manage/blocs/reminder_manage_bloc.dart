import 'package:rx_bloc/rx_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../base/models/reminder_model.dart';
import '../../base/services/reminders_service.dart';

part 'reminder_manage_bloc.rxb.g.dart';

/// A contract class containing all events of the ReminderManageBloC.
abstract class ReminderManageBlocEvents {
  void update(ReminderModel reminder);

  void create(ReminderModel reminder);

  void delete(ReminderModel reminder);
}

/// A contract class containing all states of the ReminderManageBloC.
abstract class ReminderManageBlocStates {
  /// The loading state
  Stream<bool> get isLoading;

  /// The error state
  Stream<String> get errors;

  ConnectableStream<Result<ReminderModel>> get onDeleted;

  ConnectableStream<Result<ReminderModel>> get onUpdated;

  ConnectableStream<Result<ReminderModel>> get onCreated;
}

@RxBloc()
class ReminderManageBloc extends $ReminderManageBloc {
  ReminderManageBloc(this._service) {
    onDeleted.connect().disposedBy(_compositeSubscription);
    onCreated.connect().disposedBy(_compositeSubscription);
    onUpdated.connect().disposedBy(_compositeSubscription);
  }

  final RemindersService _service;

  /// TODO: Implement error event-to-state logic
  @override
  Stream<String> _mapToErrorsState() =>
      errorState.map((error) => error.toString());

  @override
  Stream<bool> _mapToIsLoadingState() => loadingState;

  @override
  ConnectableStream<Result<ReminderModel>> _mapToOnCreatedState() =>
      _$createEvent
          .switchMap((reminder) => _service
              .create(
                title: reminder.title,
                dueDate: reminder.dueDate,
                complete: reminder.complete,
              )
              .asResultStream())
          .setResultStateHandler(this)
          .publish();

  @override
  ConnectableStream<Result<ReminderModel>> _mapToOnDeletedState() =>
      _$deleteEvent
          .switchMap((reminder) => _service
              .delete(reminder.id)
              .asStream()
              .mapTo(reminder)
              .asResultStream())
          .setResultStateHandler(this)
          .publish();

  @override
  ConnectableStream<Result<ReminderModel>> _mapToOnUpdatedState() =>
      _$updateEvent
          .switchMap((reminder) => _service.update(reminder).asResultStream())
          .setResultStateHandler(this)
          .publish();
}

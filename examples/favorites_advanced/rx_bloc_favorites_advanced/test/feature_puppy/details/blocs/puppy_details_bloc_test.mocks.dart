// Mocks generated by Mockito 5.0.0 from annotations
// in rx_bloc_favorites_advanced/test/feature_puppy/details/blocs/puppy_details_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:favorites_advanced_base/src/models/puppy.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rx_bloc_favorites_advanced/base/common_blocs/coordinator_bloc.dart'
    as _i2;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeCoordinatorEvents extends _i1.Fake implements _i2.CoordinatorEvents {
}

class _FakeCoordinatorStates extends _i1.Fake implements _i2.CoordinatorStates {
}

/// A class which mocks [CoordinatorStates].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoordinatorStates extends _i1.Mock implements _i2.CoordinatorStates {
  MockCoordinatorStates() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.Puppy> get onPuppyUpdated =>
      (super.noSuchMethod(Invocation.getter(#onPuppyUpdated),
          returnValue: Stream<_i4.Puppy>.empty()) as _i3.Stream<_i4.Puppy>);
  @override
  _i3.Stream<List<_i4.Puppy>> get onFetchedPuppiesWithExtraDetails =>
      (super.noSuchMethod(Invocation.getter(#onFetchedPuppiesWithExtraDetails),
              returnValue: Stream<List<_i4.Puppy>>.empty())
          as _i3.Stream<List<_i4.Puppy>>);
  @override
  _i3.Stream<List<_i4.Puppy>> get onPuppiesUpdated =>
      (super.noSuchMethod(Invocation.getter(#onPuppiesUpdated),
              returnValue: Stream<List<_i4.Puppy>>.empty())
          as _i3.Stream<List<_i4.Puppy>>);
}

/// A class which mocks [CoordinatorEvents].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoordinatorEvents extends _i1.Mock implements _i2.CoordinatorEvents {
  MockCoordinatorEvents() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void puppyUpdated(_i4.Puppy? puppy) =>
      super.noSuchMethod(Invocation.method(#puppyUpdated, [puppy]),
          returnValueForMissingStub: null);
  @override
  void puppiesWithExtraDetailsFetched(List<_i4.Puppy>? puppies) =>
      super.noSuchMethod(
          Invocation.method(#puppiesWithExtraDetailsFetched, [puppies]),
          returnValueForMissingStub: null);
}

/// A class which mocks [CoordinatorBlocType].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoordinatorBlocType extends _i1.Mock
    implements _i2.CoordinatorBlocType {
  MockCoordinatorBlocType() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.CoordinatorEvents get events =>
      (super.noSuchMethod(Invocation.getter(#events),
          returnValue: _FakeCoordinatorEvents()) as _i2.CoordinatorEvents);
  @override
  _i2.CoordinatorStates get states =>
      (super.noSuchMethod(Invocation.getter(#states),
          returnValue: _FakeCoordinatorStates()) as _i2.CoordinatorStates);
}

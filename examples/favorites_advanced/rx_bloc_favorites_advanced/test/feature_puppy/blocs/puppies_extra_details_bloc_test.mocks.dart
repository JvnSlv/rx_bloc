// Mocks generated by Mockito 5.0.2 from annotations
// in rx_bloc_favorites_advanced/test/feature_puppy/blocs/puppies_extra_details_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:favorites_advanced_base/src/models/puppy.dart' as _i4;
import 'package:favorites_advanced_base/src/utils/enums.dart' as _i8;
import 'package:image_picker_platform_interface/src/types/picked_file/picked_file.dart'
    as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rx_bloc_favorites_advanced/base/common_blocs/coordinator_bloc.dart'
    as _i2;
import 'package:rx_bloc_favorites_advanced/base/repositories/paginated_puppies_repository.dart'
    as _i7;
import 'package:rx_bloc_list/src/models/paginated_list.dart' as _i3;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeCoordinatorEvents extends _i1.Fake implements _i2.CoordinatorEvents {
}

class _FakeCoordinatorStates extends _i1.Fake implements _i2.CoordinatorStates {
}

class _FakePaginatedList<E> extends _i1.Fake implements _i3.PaginatedList<E> {}

class _FakePuppy extends _i1.Fake implements _i4.Puppy {}

class _FakePickedFile extends _i1.Fake implements _i5.PickedFile {}

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

/// A class which mocks [CoordinatorStates].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoordinatorStates extends _i1.Mock implements _i2.CoordinatorStates {
  MockCoordinatorStates() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Stream<_i4.Puppy> get onPuppyUpdated =>
      (super.noSuchMethod(Invocation.getter(#onPuppyUpdated),
          returnValue: Stream<_i4.Puppy>.empty()) as _i6.Stream<_i4.Puppy>);
  @override
  _i6.Stream<List<_i4.Puppy>> get onFetchedPuppiesWithExtraDetails =>
      (super.noSuchMethod(Invocation.getter(#onFetchedPuppiesWithExtraDetails),
              returnValue: Stream<List<_i4.Puppy>>.empty())
          as _i6.Stream<List<_i4.Puppy>>);
  @override
  _i6.Stream<List<_i4.Puppy>> get onPuppiesUpdated =>
      (super.noSuchMethod(Invocation.getter(#onPuppiesUpdated),
              returnValue: Stream<List<_i4.Puppy>>.empty())
          as _i6.Stream<List<_i4.Puppy>>);
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

/// A class which mocks [PaginatedPuppiesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPaginatedPuppiesRepository extends _i1.Mock
    implements _i7.PaginatedPuppiesRepository {
  MockPaginatedPuppiesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i3.PaginatedList<_i4.Puppy>> getFavoritePuppiesPaginated(
          {int? pageSize, int? page}) =>
      (super.noSuchMethod(
              Invocation.method(#getFavoritePuppiesPaginated, [],
                  {#pageSize: pageSize, #page: page}),
              returnValue: Future.value(_FakePaginatedList<_i4.Puppy>()))
          as _i6.Future<_i3.PaginatedList<_i4.Puppy>>);
  @override
  _i6.Future<_i3.PaginatedList<_i4.Puppy>> getPuppiesPaginated(
          {String? query, int? pageSize, int? page}) =>
      (super.noSuchMethod(
              Invocation.method(#getPuppiesPaginated, [],
                  {#query: query, #pageSize: pageSize, #page: page}),
              returnValue: Future.value(_FakePaginatedList<_i4.Puppy>()))
          as _i6.Future<_i3.PaginatedList<_i4.Puppy>>);
  @override
  _i6.Future<List<_i4.Puppy>> getFavoritePuppies() => (super.noSuchMethod(
      Invocation.method(#getFavoritePuppies, []),
      returnValue: Future.value(<_i4.Puppy>[])) as _i6.Future<List<_i4.Puppy>>);
  @override
  _i6.Future<List<_i4.Puppy>> getPuppies({String? query = r''}) =>
      (super.noSuchMethod(Invocation.method(#getPuppies, [], {#query: query}),
              returnValue: Future.value(<_i4.Puppy>[]))
          as _i6.Future<List<_i4.Puppy>>);
  @override
  _i6.Future<_i4.Puppy> favoritePuppy(_i4.Puppy? puppy, {bool? isFavorite}) =>
      (super.noSuchMethod(
          Invocation.method(#favoritePuppy, [puppy], {#isFavorite: isFavorite}),
          returnValue: Future.value(_FakePuppy())) as _i6.Future<_i4.Puppy>);
  @override
  _i6.Future<List<_i4.Puppy>> fetchFullEntities(List<String>? ids) =>
      (super.noSuchMethod(Invocation.method(#fetchFullEntities, [ids]),
              returnValue: Future.value(<_i4.Puppy>[]))
          as _i6.Future<List<_i4.Puppy>>);
  @override
  _i6.Future<_i5.PickedFile?> pickPuppyImage(_i8.ImagePickerAction? source) =>
      (super.noSuchMethod(Invocation.method(#pickPuppyImage, [source]),
              returnValue: Future.value(_FakePickedFile()))
          as _i6.Future<_i5.PickedFile?>);
  @override
  _i6.Future<_i4.Puppy> updatePuppy(String? puppyId, _i4.Puppy? newValue) =>
      (super.noSuchMethod(Invocation.method(#updatePuppy, [puppyId, newValue]),
          returnValue: Future.value(_FakePuppy())) as _i6.Future<_i4.Puppy>);
}

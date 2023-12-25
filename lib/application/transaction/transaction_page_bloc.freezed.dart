// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DatumModel> data) started,
    required TResult Function(List<DatumModel> data, String searchQuery) search,
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)
        filteredResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DatumModel> data)? started,
    TResult? Function(List<DatumModel> data, String searchQuery)? search,
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DatumModel> data)? started,
    TResult Function(List<DatumModel> data, String searchQuery)? search,
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Search value) search,
    required TResult Function(FilteredResult value) filteredResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Search value)? search,
    TResult? Function(FilteredResult value)? filteredResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Search value)? search,
    TResult Function(FilteredResult value)? filteredResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionPageEventCopyWith<$Res> {
  factory $TransactionPageEventCopyWith(TransactionPageEvent value,
          $Res Function(TransactionPageEvent) then) =
      _$TransactionPageEventCopyWithImpl<$Res, TransactionPageEvent>;
}

/// @nodoc
class _$TransactionPageEventCopyWithImpl<$Res,
        $Val extends TransactionPageEvent>
    implements $TransactionPageEventCopyWith<$Res> {
  _$TransactionPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DatumModel> data});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TransactionPageEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StartedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumModel>,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(final List<DatumModel> data) : _data = data;

  final List<DatumModel> _data;
  @override
  List<DatumModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TransactionPageEvent.started(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DatumModel> data) started,
    required TResult Function(List<DatumModel> data, String searchQuery) search,
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)
        filteredResult,
  }) {
    return started(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DatumModel> data)? started,
    TResult? Function(List<DatumModel> data, String searchQuery)? search,
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
  }) {
    return started?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DatumModel> data)? started,
    TResult Function(List<DatumModel> data, String searchQuery)? search,
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Search value) search,
    required TResult Function(FilteredResult value) filteredResult,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Search value)? search,
    TResult? Function(FilteredResult value)? filteredResult,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Search value)? search,
    TResult Function(FilteredResult value)? filteredResult,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransactionPageEvent {
  const factory _Started(final List<DatumModel> data) = _$StartedImpl;

  List<DatumModel> get data;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DatumModel> data, String searchQuery});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$TransactionPageEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? searchQuery = null,
  }) {
    return _then(_$SearchImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumModel>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements Search {
  const _$SearchImpl(
      {required final List<DatumModel> data, required this.searchQuery})
      : _data = data;

  final List<DatumModel> _data;
  @override
  List<DatumModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'TransactionPageEvent.search(data: $data, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DatumModel> data) started,
    required TResult Function(List<DatumModel> data, String searchQuery) search,
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)
        filteredResult,
  }) {
    return search(data, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DatumModel> data)? started,
    TResult? Function(List<DatumModel> data, String searchQuery)? search,
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
  }) {
    return search?.call(data, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DatumModel> data)? started,
    TResult Function(List<DatumModel> data, String searchQuery)? search,
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(data, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Search value) search,
    required TResult Function(FilteredResult value) filteredResult,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Search value)? search,
    TResult? Function(FilteredResult value)? filteredResult,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Search value)? search,
    TResult Function(FilteredResult value)? filteredResult,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements TransactionPageEvent {
  const factory Search(
      {required final List<DatumModel> data,
      required final String searchQuery}) = _$SearchImpl;

  List<DatumModel> get data;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilteredResultImplCopyWith<$Res> {
  factory _$$FilteredResultImplCopyWith(_$FilteredResultImpl value,
          $Res Function(_$FilteredResultImpl) then) =
      __$$FilteredResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FilterMoney? filterMoney,
      FilterStatuses? filterStatuses,
      FilterTimeRanges? filterTimeRanges,
      CustomDateTime? coustomPickedDate,
      String minimumAmount,
      String maximumAmount,
      List<String> selectedCurrency});
}

/// @nodoc
class __$$FilteredResultImplCopyWithImpl<$Res>
    extends _$TransactionPageEventCopyWithImpl<$Res, _$FilteredResultImpl>
    implements _$$FilteredResultImplCopyWith<$Res> {
  __$$FilteredResultImplCopyWithImpl(
      _$FilteredResultImpl _value, $Res Function(_$FilteredResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterMoney = freezed,
    Object? filterStatuses = freezed,
    Object? filterTimeRanges = freezed,
    Object? coustomPickedDate = freezed,
    Object? minimumAmount = null,
    Object? maximumAmount = null,
    Object? selectedCurrency = null,
  }) {
    return _then(_$FilteredResultImpl(
      filterMoney: freezed == filterMoney
          ? _value.filterMoney
          : filterMoney // ignore: cast_nullable_to_non_nullable
              as FilterMoney?,
      filterStatuses: freezed == filterStatuses
          ? _value.filterStatuses
          : filterStatuses // ignore: cast_nullable_to_non_nullable
              as FilterStatuses?,
      filterTimeRanges: freezed == filterTimeRanges
          ? _value.filterTimeRanges
          : filterTimeRanges // ignore: cast_nullable_to_non_nullable
              as FilterTimeRanges?,
      coustomPickedDate: freezed == coustomPickedDate
          ? _value.coustomPickedDate
          : coustomPickedDate // ignore: cast_nullable_to_non_nullable
              as CustomDateTime?,
      minimumAmount: null == minimumAmount
          ? _value.minimumAmount
          : minimumAmount // ignore: cast_nullable_to_non_nullable
              as String,
      maximumAmount: null == maximumAmount
          ? _value.maximumAmount
          : maximumAmount // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCurrency: null == selectedCurrency
          ? _value._selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FilteredResultImpl implements FilteredResult {
  const _$FilteredResultImpl(
      {required this.filterMoney,
      required this.filterStatuses,
      required this.filterTimeRanges,
      required this.coustomPickedDate,
      required this.minimumAmount,
      required this.maximumAmount,
      required final List<String> selectedCurrency})
      : _selectedCurrency = selectedCurrency;

  @override
  final FilterMoney? filterMoney;
  @override
  final FilterStatuses? filterStatuses;
  @override
  final FilterTimeRanges? filterTimeRanges;
  @override
  final CustomDateTime? coustomPickedDate;
  @override
  final String minimumAmount;
  @override
  final String maximumAmount;
  final List<String> _selectedCurrency;
  @override
  List<String> get selectedCurrency {
    if (_selectedCurrency is EqualUnmodifiableListView)
      return _selectedCurrency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCurrency);
  }

  @override
  String toString() {
    return 'TransactionPageEvent.filteredResult(filterMoney: $filterMoney, filterStatuses: $filterStatuses, filterTimeRanges: $filterTimeRanges, coustomPickedDate: $coustomPickedDate, minimumAmount: $minimumAmount, maximumAmount: $maximumAmount, selectedCurrency: $selectedCurrency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredResultImpl &&
            (identical(other.filterMoney, filterMoney) ||
                other.filterMoney == filterMoney) &&
            (identical(other.filterStatuses, filterStatuses) ||
                other.filterStatuses == filterStatuses) &&
            (identical(other.filterTimeRanges, filterTimeRanges) ||
                other.filterTimeRanges == filterTimeRanges) &&
            (identical(other.coustomPickedDate, coustomPickedDate) ||
                other.coustomPickedDate == coustomPickedDate) &&
            (identical(other.minimumAmount, minimumAmount) ||
                other.minimumAmount == minimumAmount) &&
            (identical(other.maximumAmount, maximumAmount) ||
                other.maximumAmount == maximumAmount) &&
            const DeepCollectionEquality()
                .equals(other._selectedCurrency, _selectedCurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      filterMoney,
      filterStatuses,
      filterTimeRanges,
      coustomPickedDate,
      minimumAmount,
      maximumAmount,
      const DeepCollectionEquality().hash(_selectedCurrency));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredResultImplCopyWith<_$FilteredResultImpl> get copyWith =>
      __$$FilteredResultImplCopyWithImpl<_$FilteredResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DatumModel> data) started,
    required TResult Function(List<DatumModel> data, String searchQuery) search,
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)
        filteredResult,
  }) {
    return filteredResult(filterMoney, filterStatuses, filterTimeRanges,
        coustomPickedDate, minimumAmount, maximumAmount, selectedCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DatumModel> data)? started,
    TResult? Function(List<DatumModel> data, String searchQuery)? search,
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
  }) {
    return filteredResult?.call(filterMoney, filterStatuses, filterTimeRanges,
        coustomPickedDate, minimumAmount, maximumAmount, selectedCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DatumModel> data)? started,
    TResult Function(List<DatumModel> data, String searchQuery)? search,
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            String minimumAmount,
            String maximumAmount,
            List<String> selectedCurrency)?
        filteredResult,
    required TResult orElse(),
  }) {
    if (filteredResult != null) {
      return filteredResult(filterMoney, filterStatuses, filterTimeRanges,
          coustomPickedDate, minimumAmount, maximumAmount, selectedCurrency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Search value) search,
    required TResult Function(FilteredResult value) filteredResult,
  }) {
    return filteredResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Search value)? search,
    TResult? Function(FilteredResult value)? filteredResult,
  }) {
    return filteredResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Search value)? search,
    TResult Function(FilteredResult value)? filteredResult,
    required TResult orElse(),
  }) {
    if (filteredResult != null) {
      return filteredResult(this);
    }
    return orElse();
  }
}

abstract class FilteredResult implements TransactionPageEvent {
  const factory FilteredResult(
      {required final FilterMoney? filterMoney,
      required final FilterStatuses? filterStatuses,
      required final FilterTimeRanges? filterTimeRanges,
      required final CustomDateTime? coustomPickedDate,
      required final String minimumAmount,
      required final String maximumAmount,
      required final List<String> selectedCurrency}) = _$FilteredResultImpl;

  FilterMoney? get filterMoney;
  FilterStatuses? get filterStatuses;
  FilterTimeRanges? get filterTimeRanges;
  CustomDateTime? get coustomPickedDate;
  String get minimumAmount;
  String get maximumAmount;
  List<String> get selectedCurrency;
  @JsonKey(ignore: true)
  _$$FilteredResultImplCopyWith<_$FilteredResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionPageState {
  List<DatumModel> get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<DatumModel> get filteredList => throw _privateConstructorUsedError;
  List<dynamic> get selectedFilters => throw _privateConstructorUsedError;
  SelectedFilterResults? get selectedFilterResults =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DatumModel> data,
            bool isLoading,
            List<DatumModel> filteredList,
            List<dynamic> selectedFilters,
            SelectedFilterResults? selectedFilterResults)
        startedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DatumModel> data,
            bool isLoading,
            List<DatumModel> filteredList,
            List<dynamic> selectedFilters,
            SelectedFilterResults? selectedFilterResults)?
        startedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<DatumModel> data,
            bool isLoading,
            List<DatumModel> filteredList,
            List<dynamic> selectedFilters,
            SelectedFilterResults? selectedFilterResults)?
        startedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedState value) startedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedState value)? startedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedState value)? startedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionPageStateCopyWith<TransactionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionPageStateCopyWith<$Res> {
  factory $TransactionPageStateCopyWith(TransactionPageState value,
          $Res Function(TransactionPageState) then) =
      _$TransactionPageStateCopyWithImpl<$Res, TransactionPageState>;
  @useResult
  $Res call(
      {List<DatumModel> data,
      bool isLoading,
      List<DatumModel> filteredList,
      List<dynamic> selectedFilters,
      SelectedFilterResults? selectedFilterResults});
}

/// @nodoc
class _$TransactionPageStateCopyWithImpl<$Res,
        $Val extends TransactionPageState>
    implements $TransactionPageStateCopyWith<$Res> {
  _$TransactionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? filteredList = null,
    Object? selectedFilters = null,
    Object? selectedFilterResults = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filteredList: null == filteredList
          ? _value.filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<DatumModel>,
      selectedFilters: null == selectedFilters
          ? _value.selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedFilterResults: freezed == selectedFilterResults
          ? _value.selectedFilterResults
          : selectedFilterResults // ignore: cast_nullable_to_non_nullable
              as SelectedFilterResults?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedStateImplCopyWith<$Res>
    implements $TransactionPageStateCopyWith<$Res> {
  factory _$$StartedStateImplCopyWith(
          _$StartedStateImpl value, $Res Function(_$StartedStateImpl) then) =
      __$$StartedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DatumModel> data,
      bool isLoading,
      List<DatumModel> filteredList,
      List<dynamic> selectedFilters,
      SelectedFilterResults? selectedFilterResults});
}

/// @nodoc
class __$$StartedStateImplCopyWithImpl<$Res>
    extends _$TransactionPageStateCopyWithImpl<$Res, _$StartedStateImpl>
    implements _$$StartedStateImplCopyWith<$Res> {
  __$$StartedStateImplCopyWithImpl(
      _$StartedStateImpl _value, $Res Function(_$StartedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? filteredList = null,
    Object? selectedFilters = null,
    Object? selectedFilterResults = freezed,
  }) {
    return _then(_$StartedStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filteredList: null == filteredList
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<DatumModel>,
      selectedFilters: null == selectedFilters
          ? _value._selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedFilterResults: freezed == selectedFilterResults
          ? _value.selectedFilterResults
          : selectedFilterResults // ignore: cast_nullable_to_non_nullable
              as SelectedFilterResults?,
    ));
  }
}

/// @nodoc

class _$StartedStateImpl implements StartedState {
  const _$StartedStateImpl(
      {required final List<DatumModel> data,
      required this.isLoading,
      required final List<DatumModel> filteredList,
      required final List<dynamic> selectedFilters,
      this.selectedFilterResults})
      : _data = data,
        _filteredList = filteredList,
        _selectedFilters = selectedFilters;

  final List<DatumModel> _data;
  @override
  List<DatumModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final bool isLoading;
  final List<DatumModel> _filteredList;
  @override
  List<DatumModel> get filteredList {
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  final List<dynamic> _selectedFilters;
  @override
  List<dynamic> get selectedFilters {
    if (_selectedFilters is EqualUnmodifiableListView) return _selectedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFilters);
  }

  @override
  final SelectedFilterResults? selectedFilterResults;

  @override
  String toString() {
    return 'TransactionPageState.startedState(data: $data, isLoading: $isLoading, filteredList: $filteredList, selectedFilters: $selectedFilters, selectedFilterResults: $selectedFilterResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            const DeepCollectionEquality()
                .equals(other._selectedFilters, _selectedFilters) &&
            (identical(other.selectedFilterResults, selectedFilterResults) ||
                other.selectedFilterResults == selectedFilterResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      isLoading,
      const DeepCollectionEquality().hash(_filteredList),
      const DeepCollectionEquality().hash(_selectedFilters),
      selectedFilterResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedStateImplCopyWith<_$StartedStateImpl> get copyWith =>
      __$$StartedStateImplCopyWithImpl<_$StartedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DatumModel> data,
            bool isLoading,
            List<DatumModel> filteredList,
            List<dynamic> selectedFilters,
            SelectedFilterResults? selectedFilterResults)
        startedState,
  }) {
    return startedState(
        data, isLoading, filteredList, selectedFilters, selectedFilterResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DatumModel> data,
            bool isLoading,
            List<DatumModel> filteredList,
            List<dynamic> selectedFilters,
            SelectedFilterResults? selectedFilterResults)?
        startedState,
  }) {
    return startedState?.call(
        data, isLoading, filteredList, selectedFilters, selectedFilterResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<DatumModel> data,
            bool isLoading,
            List<DatumModel> filteredList,
            List<dynamic> selectedFilters,
            SelectedFilterResults? selectedFilterResults)?
        startedState,
    required TResult orElse(),
  }) {
    if (startedState != null) {
      return startedState(data, isLoading, filteredList, selectedFilters,
          selectedFilterResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedState value) startedState,
  }) {
    return startedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedState value)? startedState,
  }) {
    return startedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedState value)? startedState,
    required TResult orElse(),
  }) {
    if (startedState != null) {
      return startedState(this);
    }
    return orElse();
  }
}

abstract class StartedState implements TransactionPageState {
  const factory StartedState(
      {required final List<DatumModel> data,
      required final bool isLoading,
      required final List<DatumModel> filteredList,
      required final List<dynamic> selectedFilters,
      final SelectedFilterResults? selectedFilterResults}) = _$StartedStateImpl;

  @override
  List<DatumModel> get data;
  @override
  bool get isLoading;
  @override
  List<DatumModel> get filteredList;
  @override
  List<dynamic> get selectedFilters;
  @override
  SelectedFilterResults? get selectedFilterResults;
  @override
  @JsonKey(ignore: true)
  _$$StartedStateImplCopyWith<_$StartedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

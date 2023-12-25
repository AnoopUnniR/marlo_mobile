// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)
        selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)?
        selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)?
        selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Selected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Selected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Selected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterScreenEventCopyWith<$Res> {
  factory $FilterScreenEventCopyWith(
          FilterScreenEvent value, $Res Function(FilterScreenEvent) then) =
      _$FilterScreenEventCopyWithImpl<$Res, FilterScreenEvent>;
}

/// @nodoc
class _$FilterScreenEventCopyWithImpl<$Res, $Val extends FilterScreenEvent>
    implements $FilterScreenEventCopyWith<$Res> {
  _$FilterScreenEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FilterScreenEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FilterScreenEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)
        selected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)?
        selected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)?
        selected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Selected value) selected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Selected value)? selected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Selected value)? selected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FilterScreenEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FilterMoney? filterMoney,
      FilterStatuses? filterStatuses,
      FilterTimeRanges? filterTimeRanges,
      CustomDateTime? customDatePicked,
      List<String> selectedCurrencies});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$FilterScreenEventCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterMoney = freezed,
    Object? filterStatuses = freezed,
    Object? filterTimeRanges = freezed,
    Object? customDatePicked = freezed,
    Object? selectedCurrencies = null,
  }) {
    return _then(_$SelectedImpl(
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
      customDatePicked: freezed == customDatePicked
          ? _value.customDatePicked
          : customDatePicked // ignore: cast_nullable_to_non_nullable
              as CustomDateTime?,
      selectedCurrencies: null == selectedCurrencies
          ? _value._selectedCurrencies
          : selectedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements Selected {
  const _$SelectedImpl(
      {required this.filterMoney,
      required this.filterStatuses,
      required this.filterTimeRanges,
      this.customDatePicked,
      required final List<String> selectedCurrencies})
      : _selectedCurrencies = selectedCurrencies;

  @override
  final FilterMoney? filterMoney;
  @override
  final FilterStatuses? filterStatuses;
  @override
  final FilterTimeRanges? filterTimeRanges;
  @override
  final CustomDateTime? customDatePicked;
  final List<String> _selectedCurrencies;
  @override
  List<String> get selectedCurrencies {
    if (_selectedCurrencies is EqualUnmodifiableListView)
      return _selectedCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCurrencies);
  }

  @override
  String toString() {
    return 'FilterScreenEvent.selected(filterMoney: $filterMoney, filterStatuses: $filterStatuses, filterTimeRanges: $filterTimeRanges, customDatePicked: $customDatePicked, selectedCurrencies: $selectedCurrencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.filterMoney, filterMoney) ||
                other.filterMoney == filterMoney) &&
            (identical(other.filterStatuses, filterStatuses) ||
                other.filterStatuses == filterStatuses) &&
            (identical(other.filterTimeRanges, filterTimeRanges) ||
                other.filterTimeRanges == filterTimeRanges) &&
            (identical(other.customDatePicked, customDatePicked) ||
                other.customDatePicked == customDatePicked) &&
            const DeepCollectionEquality()
                .equals(other._selectedCurrencies, _selectedCurrencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      filterMoney,
      filterStatuses,
      filterTimeRanges,
      customDatePicked,
      const DeepCollectionEquality().hash(_selectedCurrencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)
        selected,
  }) {
    return selected(filterMoney, filterStatuses, filterTimeRanges,
        customDatePicked, selectedCurrencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)?
        selected,
  }) {
    return selected?.call(filterMoney, filterStatuses, filterTimeRanges,
        customDatePicked, selectedCurrencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? customDatePicked,
            List<String> selectedCurrencies)?
        selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(filterMoney, filterStatuses, filterTimeRanges,
          customDatePicked, selectedCurrencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Selected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Selected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Selected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class Selected implements FilterScreenEvent {
  const factory Selected(
      {required final FilterMoney? filterMoney,
      required final FilterStatuses? filterStatuses,
      required final FilterTimeRanges? filterTimeRanges,
      final CustomDateTime? customDatePicked,
      required final List<String> selectedCurrencies}) = _$SelectedImpl;

  FilterMoney? get filterMoney;
  FilterStatuses? get filterStatuses;
  FilterTimeRanges? get filterTimeRanges;
  CustomDateTime? get customDatePicked;
  List<String> get selectedCurrencies;
  @JsonKey(ignore: true)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterScreenState {
  FilterMoney? get filterMoney => throw _privateConstructorUsedError;
  FilterStatuses? get filterStatuses => throw _privateConstructorUsedError;
  FilterTimeRanges? get filterTimeRanges => throw _privateConstructorUsedError;
  CustomDateTime? get coustomPickedDate => throw _privateConstructorUsedError;
  List<String> get selectedCurrencies => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            List<String> selectedCurrencies)
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            List<String> selectedCurrencies)?
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            List<String> selectedCurrencies)?
        filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Filtered value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Filtered value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Filtered value)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterScreenStateCopyWith<FilterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterScreenStateCopyWith<$Res> {
  factory $FilterScreenStateCopyWith(
          FilterScreenState value, $Res Function(FilterScreenState) then) =
      _$FilterScreenStateCopyWithImpl<$Res, FilterScreenState>;
  @useResult
  $Res call(
      {FilterMoney? filterMoney,
      FilterStatuses? filterStatuses,
      FilterTimeRanges? filterTimeRanges,
      CustomDateTime? coustomPickedDate,
      List<String> selectedCurrencies});
}

/// @nodoc
class _$FilterScreenStateCopyWithImpl<$Res, $Val extends FilterScreenState>
    implements $FilterScreenStateCopyWith<$Res> {
  _$FilterScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterMoney = freezed,
    Object? filterStatuses = freezed,
    Object? filterTimeRanges = freezed,
    Object? coustomPickedDate = freezed,
    Object? selectedCurrencies = null,
  }) {
    return _then(_value.copyWith(
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
      selectedCurrencies: null == selectedCurrencies
          ? _value.selectedCurrencies
          : selectedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilteredImplCopyWith<$Res>
    implements $FilterScreenStateCopyWith<$Res> {
  factory _$$FilteredImplCopyWith(
          _$FilteredImpl value, $Res Function(_$FilteredImpl) then) =
      __$$FilteredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FilterMoney? filterMoney,
      FilterStatuses? filterStatuses,
      FilterTimeRanges? filterTimeRanges,
      CustomDateTime? coustomPickedDate,
      List<String> selectedCurrencies});
}

/// @nodoc
class __$$FilteredImplCopyWithImpl<$Res>
    extends _$FilterScreenStateCopyWithImpl<$Res, _$FilteredImpl>
    implements _$$FilteredImplCopyWith<$Res> {
  __$$FilteredImplCopyWithImpl(
      _$FilteredImpl _value, $Res Function(_$FilteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterMoney = freezed,
    Object? filterStatuses = freezed,
    Object? filterTimeRanges = freezed,
    Object? coustomPickedDate = freezed,
    Object? selectedCurrencies = null,
  }) {
    return _then(_$FilteredImpl(
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
      selectedCurrencies: null == selectedCurrencies
          ? _value._selectedCurrencies
          : selectedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FilteredImpl implements Filtered {
  const _$FilteredImpl(
      {required this.filterMoney,
      required this.filterStatuses,
      required this.filterTimeRanges,
      required this.coustomPickedDate,
      required final List<String> selectedCurrencies})
      : _selectedCurrencies = selectedCurrencies;

  @override
  final FilterMoney? filterMoney;
  @override
  final FilterStatuses? filterStatuses;
  @override
  final FilterTimeRanges? filterTimeRanges;
  @override
  final CustomDateTime? coustomPickedDate;
  final List<String> _selectedCurrencies;
  @override
  List<String> get selectedCurrencies {
    if (_selectedCurrencies is EqualUnmodifiableListView)
      return _selectedCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCurrencies);
  }

  @override
  String toString() {
    return 'FilterScreenState.filtered(filterMoney: $filterMoney, filterStatuses: $filterStatuses, filterTimeRanges: $filterTimeRanges, coustomPickedDate: $coustomPickedDate, selectedCurrencies: $selectedCurrencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredImpl &&
            (identical(other.filterMoney, filterMoney) ||
                other.filterMoney == filterMoney) &&
            (identical(other.filterStatuses, filterStatuses) ||
                other.filterStatuses == filterStatuses) &&
            (identical(other.filterTimeRanges, filterTimeRanges) ||
                other.filterTimeRanges == filterTimeRanges) &&
            (identical(other.coustomPickedDate, coustomPickedDate) ||
                other.coustomPickedDate == coustomPickedDate) &&
            const DeepCollectionEquality()
                .equals(other._selectedCurrencies, _selectedCurrencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      filterMoney,
      filterStatuses,
      filterTimeRanges,
      coustomPickedDate,
      const DeepCollectionEquality().hash(_selectedCurrencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredImplCopyWith<_$FilteredImpl> get copyWith =>
      __$$FilteredImplCopyWithImpl<_$FilteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            List<String> selectedCurrencies)
        filtered,
  }) {
    return filtered(filterMoney, filterStatuses, filterTimeRanges,
        coustomPickedDate, selectedCurrencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            List<String> selectedCurrencies)?
        filtered,
  }) {
    return filtered?.call(filterMoney, filterStatuses, filterTimeRanges,
        coustomPickedDate, selectedCurrencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FilterMoney? filterMoney,
            FilterStatuses? filterStatuses,
            FilterTimeRanges? filterTimeRanges,
            CustomDateTime? coustomPickedDate,
            List<String> selectedCurrencies)?
        filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(filterMoney, filterStatuses, filterTimeRanges,
          coustomPickedDate, selectedCurrencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Filtered value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Filtered value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Filtered value)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class Filtered implements FilterScreenState {
  const factory Filtered(
      {required final FilterMoney? filterMoney,
      required final FilterStatuses? filterStatuses,
      required final FilterTimeRanges? filterTimeRanges,
      required final CustomDateTime? coustomPickedDate,
      required final List<String> selectedCurrencies}) = _$FilteredImpl;

  @override
  FilterMoney? get filterMoney;
  @override
  FilterStatuses? get filterStatuses;
  @override
  FilterTimeRanges? get filterTimeRanges;
  @override
  CustomDateTime? get coustomPickedDate;
  @override
  List<String> get selectedCurrencies;
  @override
  @JsonKey(ignore: true)
  _$$FilteredImplCopyWith<_$FilteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

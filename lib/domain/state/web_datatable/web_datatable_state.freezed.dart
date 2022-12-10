// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_datatable_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebDataTableState {
  bool get sortAscending => throw _privateConstructorUsedError;
  String? get sortColumnName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebDataTableStateCopyWith<WebDataTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebDataTableStateCopyWith<$Res> {
  factory $WebDataTableStateCopyWith(
          WebDataTableState value, $Res Function(WebDataTableState) then) =
      _$WebDataTableStateCopyWithImpl<$Res, WebDataTableState>;
  @useResult
  $Res call({bool sortAscending, String? sortColumnName});
}

/// @nodoc
class _$WebDataTableStateCopyWithImpl<$Res, $Val extends WebDataTableState>
    implements $WebDataTableStateCopyWith<$Res> {
  _$WebDataTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortAscending = null,
    Object? sortColumnName = freezed,
  }) {
    return _then(_value.copyWith(
      sortAscending: null == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      sortColumnName: freezed == sortColumnName
          ? _value.sortColumnName
          : sortColumnName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebDataTableStateCopyWith<$Res>
    implements $WebDataTableStateCopyWith<$Res> {
  factory _$$_WebDataTableStateCopyWith(_$_WebDataTableState value,
          $Res Function(_$_WebDataTableState) then) =
      __$$_WebDataTableStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool sortAscending, String? sortColumnName});
}

/// @nodoc
class __$$_WebDataTableStateCopyWithImpl<$Res>
    extends _$WebDataTableStateCopyWithImpl<$Res, _$_WebDataTableState>
    implements _$$_WebDataTableStateCopyWith<$Res> {
  __$$_WebDataTableStateCopyWithImpl(
      _$_WebDataTableState _value, $Res Function(_$_WebDataTableState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortAscending = null,
    Object? sortColumnName = freezed,
  }) {
    return _then(_$_WebDataTableState(
      sortAscending: null == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      sortColumnName: freezed == sortColumnName
          ? _value.sortColumnName
          : sortColumnName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WebDataTableState implements _WebDataTableState {
  const _$_WebDataTableState({this.sortAscending = true, this.sortColumnName});

  @override
  @JsonKey()
  final bool sortAscending;
  @override
  final String? sortColumnName;

  @override
  String toString() {
    return 'WebDataTableState(sortAscending: $sortAscending, sortColumnName: $sortColumnName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebDataTableState &&
            (identical(other.sortAscending, sortAscending) ||
                other.sortAscending == sortAscending) &&
            (identical(other.sortColumnName, sortColumnName) ||
                other.sortColumnName == sortColumnName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortAscending, sortColumnName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebDataTableStateCopyWith<_$_WebDataTableState> get copyWith =>
      __$$_WebDataTableStateCopyWithImpl<_$_WebDataTableState>(
          this, _$identity);
}

abstract class _WebDataTableState implements WebDataTableState {
  const factory _WebDataTableState(
      {final bool sortAscending,
      final String? sortColumnName}) = _$_WebDataTableState;

  @override
  bool get sortAscending;
  @override
  String? get sortColumnName;
  @override
  @JsonKey(ignore: true)
  _$$_WebDataTableStateCopyWith<_$_WebDataTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

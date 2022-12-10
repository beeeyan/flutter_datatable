// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datatable_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataTableState {
  /// id
  bool get sortAscending => throw _privateConstructorUsedError;
  int? get sortColumnIndex => throw _privateConstructorUsedError;

  /// 記事本体
  /// DataTable Classでは必要そう。
  List<Article> get articleList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataTableStateCopyWith<DataTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTableStateCopyWith<$Res> {
  factory $DataTableStateCopyWith(
          DataTableState value, $Res Function(DataTableState) then) =
      _$DataTableStateCopyWithImpl<$Res, DataTableState>;
  @useResult
  $Res call(
      {bool sortAscending, int? sortColumnIndex, List<Article> articleList});
}

/// @nodoc
class _$DataTableStateCopyWithImpl<$Res, $Val extends DataTableState>
    implements $DataTableStateCopyWith<$Res> {
  _$DataTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortAscending = null,
    Object? sortColumnIndex = freezed,
    Object? articleList = null,
  }) {
    return _then(_value.copyWith(
      sortAscending: null == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      sortColumnIndex: freezed == sortColumnIndex
          ? _value.sortColumnIndex
          : sortColumnIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      articleList: null == articleList
          ? _value.articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTableStateCopyWith<$Res>
    implements $DataTableStateCopyWith<$Res> {
  factory _$$_DataTableStateCopyWith(
          _$_DataTableState value, $Res Function(_$_DataTableState) then) =
      __$$_DataTableStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool sortAscending, int? sortColumnIndex, List<Article> articleList});
}

/// @nodoc
class __$$_DataTableStateCopyWithImpl<$Res>
    extends _$DataTableStateCopyWithImpl<$Res, _$_DataTableState>
    implements _$$_DataTableStateCopyWith<$Res> {
  __$$_DataTableStateCopyWithImpl(
      _$_DataTableState _value, $Res Function(_$_DataTableState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortAscending = null,
    Object? sortColumnIndex = freezed,
    Object? articleList = null,
  }) {
    return _then(_$_DataTableState(
      sortAscending: null == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      sortColumnIndex: freezed == sortColumnIndex
          ? _value.sortColumnIndex
          : sortColumnIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      articleList: null == articleList
          ? _value._articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_DataTableState implements _DataTableState {
  const _$_DataTableState(
      {this.sortAscending = false,
      this.sortColumnIndex,
      final List<Article> articleList = const <Article>[]})
      : _articleList = articleList;

  /// id
  @override
  @JsonKey()
  final bool sortAscending;
  @override
  final int? sortColumnIndex;

  /// 記事本体
  /// DataTable Classでは必要そう。
  final List<Article> _articleList;

  /// 記事本体
  /// DataTable Classでは必要そう。
  @override
  @JsonKey()
  List<Article> get articleList {
    if (_articleList is EqualUnmodifiableListView) return _articleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articleList);
  }

  @override
  String toString() {
    return 'DataTableState(sortAscending: $sortAscending, sortColumnIndex: $sortColumnIndex, articleList: $articleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTableState &&
            (identical(other.sortAscending, sortAscending) ||
                other.sortAscending == sortAscending) &&
            (identical(other.sortColumnIndex, sortColumnIndex) ||
                other.sortColumnIndex == sortColumnIndex) &&
            const DeepCollectionEquality()
                .equals(other._articleList, _articleList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortAscending, sortColumnIndex,
      const DeepCollectionEquality().hash(_articleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTableStateCopyWith<_$_DataTableState> get copyWith =>
      __$$_DataTableStateCopyWithImpl<_$_DataTableState>(this, _$identity);
}

abstract class _DataTableState implements DataTableState {
  const factory _DataTableState(
      {final bool sortAscending,
      final int? sortColumnIndex,
      final List<Article> articleList}) = _$_DataTableState;

  @override

  /// id
  bool get sortAscending;
  @override
  int? get sortColumnIndex;
  @override

  /// 記事本体
  /// DataTable Classでは必要そう。
  List<Article> get articleList;
  @override
  @JsonKey(ignore: true)
  _$$_DataTableStateCopyWith<_$_DataTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

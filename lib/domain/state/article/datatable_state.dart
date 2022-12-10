import 'package:flutter_datatable/domain/model/article/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'datatable_state.freezed.dart';

@freezed
class DataTableState with _$DataTableState {
  const factory DataTableState({
    /// id
    @Default(false) bool sortAscending,

    int? sortColumnIndex,

    int? selectedIndex,

    /// 記事本体
    /// DataTable Classでは必要そう。
    @Default(<Article>[]) List<Article> articleList,

  }) = _DataTableState;
}

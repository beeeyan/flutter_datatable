import 'package:flutter_datatable/controller/article_controller.dart';
import 'package:flutter_datatable/domain/model/article/article.dart';
import 'package:flutter_datatable/domain/state/datatable/datatable_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// DataTable・DataTable2両方で利用できる
final dataTableStateProvider =
    StateNotifierProvider.autoDispose<DataTableStateNotifier, DataTableState>(
  (ref) => DataTableStateNotifier(
    ref,
    ref.watch(articleListProvider).value ?? const [],
  ),
);

class DataTableStateNotifier extends StateNotifier<DataTableState> {
  DataTableStateNotifier(this.ref, this.articleList)
      : super(
          DataTableState(
            articleList: articleList,
          ),
        );

  final Ref ref;
  final List<Article> articleList;

  void init() {
    state = state.copyWith(articleList: articleList);
  }

  void onDefaultSort({required int columnIndex, required bool ascending}) {
    final sortArticleList = [...state.articleList];
    // Stringでない場合は成り立たない。
    if (ascending) {
      // 結構苦しいかも
      sortArticleList.sort(
        (a, b) => (b.toJson().values.elementAt(columnIndex) as String)
            .compareTo(a.toJson().values.elementAt(columnIndex) as String),
      );
    } else {
      sortArticleList.sort(
        (a, b) => (a.toJson().values.elementAt(columnIndex) as String)
            .compareTo(b.toJson().values.elementAt(columnIndex) as String),
      );
    }
    state = state.copyWith(
      sortAscending: ascending,
      sortColumnIndex: columnIndex,
      articleList: sortArticleList,
    );
  }
}

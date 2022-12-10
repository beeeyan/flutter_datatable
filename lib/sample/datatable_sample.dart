import 'package:flutter/material.dart';
import 'package:flutter_datatable/controller/article_controller.dart';
import 'package:flutter_datatable/controller/datatable_controller.dart';
import 'package:flutter_datatable/widget/drawer_menu.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DataTableSample extends ConsumerWidget {
  const DataTableSample({super.key});

  static const route = '/sample/datatable';
  static const title = 'DataTable Class';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // StateNotifierProvider一つにまとめるのがいいかも
    final articleListAsnc = ref.watch(articleListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      // 画面切り替え用
      drawer: const DrawerMenu(),
      body: articleListAsnc.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Center(
          child: Text(err.toString()),
        ),
        data: (articleList) {
          // StateNotifierProvider一つにまとめるのがいいかも
          final dataTableState = ref.watch(dataTableStateProvider(articleList));
          final dataTableStateNotifier =
              ref.watch(dataTableStateProvider(articleList).notifier);
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: DataTable(
              sortAscending: dataTableState.sortAscending,
              sortColumnIndex: dataTableState.sortColumnIndex,
              columns: [
                DataColumn(
                  label: const Text('id'),
                  // 一つ一つに「onSort」を指定する必要がある
                  onSort: (columnIndex, ascending) =>
                      dataTableStateNotifier.onDefaultSort(
                    ascending: ascending,
                    columnIndex: columnIndex,
                  ),
                ),
                const DataColumn(
                  label: Text('タイトル'),
                ),
                const DataColumn(
                  label: Text('作成日'),
                ),
                const DataColumn(
                  label: Text('更新日'),
                ),
              ],
              rows: dataTableState.articleList
                  .map(
                    (article) => DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(article.id),
                        ),
                        DataCell(
                          Text(article.title),
                        ),
                        DataCell(
                          Text(
                            DateFormat.yMMMMd()
                                .add_jms()
                                .format(article.createdAt),
                          ),
                        ),
                        DataCell(
                          Text(
                            DateFormat.yMMMMd()
                                .add_jms()
                                .format(article.updatedAt),
                          ),
                        ),
                      ],
                      // メモ「value」がbool値なのが、人によっては扱いづらいかも。
                      onSelectChanged: (value) {
                        showDialog<void>(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('選択した行のデータ'),
                              content: Text(article.toString()),
                            );
                          },
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}

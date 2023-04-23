import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datatable/controller/article_controller.dart';
import 'package:flutter_datatable/controller/datatable_controller.dart';
import 'package:flutter_datatable/widget/drawer_menu.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DataTable2Sample extends ConsumerWidget {
  const DataTable2Sample({super.key});

  static const route = '/sample/datatable2';
  static const title = 'data_table_2';

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
          final dataTableState = ref.watch(dataTableStateProvider);
          final dataTableStateNotifier =
              ref.watch(dataTableStateProvider.notifier);
          // デザインはデフォルトで良しなにいい感じの表示をしてくれる。
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: DataTable2(
              // onSelectAllの記述がない場合は、
              // 「onSelectChanged」の処理が全て実行される。
              onSelectAll: (value) {
                showDialog<void>(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      title: Text('全選択'),
                      content: Text('全選択'),
                    );
                  },
                );
              },
              // チェックボックスを消すこともできる
              // showCheckboxColumn: false,
              sortColumnIndex: dataTableState.sortColumnIndex,
              sortAscending: dataTableState.sortAscending,
              // DataTable Classと使い方に違いはない。
              columns: [
                DataColumn(
                  label: const Text('id'),
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
              // DataTable Classと使い方に違いはない。
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
                      // chekboxの活性非活性でのみ利用すべきなのかも。
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

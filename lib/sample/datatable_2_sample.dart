import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datatable/controller/article_controller.dart';
import 'package:flutter_datatable/widget/drawer_menu.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DataTable2Sample extends ConsumerWidget {
  const DataTable2Sample({super.key});

  static const route = '/sample/datatable2';
  static const title = 'data_table_2';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: DataTable2(
              // DataTable Classと使い方に違いはない。
              columns: const [
                DataColumn(
                  label: Text('id'),
                ),
                DataColumn(
                  label: Text('タイトル'),
                ),
                DataColumn(
                  label: Text('作成日'),
                ),
                DataColumn(
                  label: Text('更新日'),
                ),
              ],

              rows: articleList
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

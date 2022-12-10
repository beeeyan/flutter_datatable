import 'package:flutter/material.dart';
import 'package:flutter_datatable/controller/article_controller.dart';
import 'package:flutter_datatable/widget/drawer_menu.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DataTableSample extends ConsumerWidget {
  const DataTableSample({super.key});

  static const route = '/sample/datatable';
  static const title = 'DataTable Class';

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
            child: DataTable(
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

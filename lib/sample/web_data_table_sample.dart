import 'package:flutter/material.dart';
import 'package:flutter_datatable/controller/article_controller.dart';
import 'package:flutter_datatable/utile/datatime_convert.dart';
import 'package:flutter_datatable/widget/drawer_menu.dart';
import 'package:flutter_web_data_table/web_data_table.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class WebDataTableSample extends ConsumerWidget {
  const WebDataTableSample({super.key});

  static const route = '/sample/webDatatable';
  static const title = 'web_data_table';

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
            child: WebDataTable(
              header: Container(),
              source: WebDataTableSource(
                // 一律で表示方法などを制御できる。
                columns: <WebDataColumn>[
                  WebDataColumn(
                    // key名も直で指定する。
                    name: 'id',
                    label: const Text('id'),
                    // ここがdynamicなのが微妙かも
                    dataCell: (dynamic value) => DataCell(
                      Text('$value'),
                    ),
                  ),
                  WebDataColumn(
                    name: 'title',
                    label: const Text('タイトル'),
                    dataCell: (dynamic value) => DataCell(
                      Text('$value'),
                    ),
                  ),
                  WebDataColumn(
                    name: 'createdAt',
                    label: const Text('作成日時'),
                    // ここがdynamicなのが微妙かも
                    dataCell: (dynamic value) {
                      // 表示日付の変換
                      final createdAt =
                          const DatetimeConverter().fromJson(value as String);
                      return DataCell(
                        Text(
                          DateFormat.yMMMMd().add_jms().format(createdAt),
                        ),
                      );
                    },
                  ),
                  WebDataColumn(
                    name: 'updatedAt',
                    label: const Text('更新日時'),
                    // ここがdynamicなのが微妙かも
                    dataCell: (dynamic value) {
                      // 表示日付の変換
                      final createdAt =
                          const DatetimeConverter().fromJson(value as String);
                      return DataCell(
                        Text(
                          DateFormat.yMMMMd().add_jms().format(createdAt),
                        ),
                      );
                    },
                  ),
                ],
                // Map<String, dynamic>型で指定する必要がある。
                rows: articleList.map((article) => article.toJson()).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_datatable/widget/drawer_menu.dart';

class DataTableSample extends StatelessWidget {
  const DataTableSample({super.key});

  static const route = '/sample/datatable';
  static const title = 'DataTable Class';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text(title),),
      // 画面切り替え用
      drawer: const DrawerMenu(),
      body: const Center(
        child: Text('ページ'),
      ),
    );
  }
}

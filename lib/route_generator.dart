import 'package:flutter/material.dart';
import 'package:flutter_datatable/sample/datatable_sample.dart';

class RouteGenerator {
  static Route<dynamic> generateRote(RouteSettings settings) {
    // 簡易的に作成しているのでget parameterなどは付与されない想定
    final paths = settings.name!;
    final path = paths[0];

    switch (path) {
      case DataTableSample.route:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DataTableSample(),
          settings: RouteSettings(name: settings.name),
        );
      default:
        return MaterialPageRoute<dynamic>(builder: (_) => const DataTableSample());
    }
  }
}
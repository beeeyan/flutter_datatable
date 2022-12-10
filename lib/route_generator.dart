import 'package:flutter/material.dart';
import 'package:flutter_datatable/sample/datatable_2_sample.dart';
import 'package:flutter_datatable/sample/datatable_sample.dart';
import 'package:flutter_datatable/sample/paginated_dataTable_2_sample.dart';
import 'package:flutter_datatable/sample/web_data_table_sample.dart';

class RouteGenerator {
  static Route<dynamic> generateRote(RouteSettings settings) {
    // 簡易的に作成しているのでget parameterなどは付与されない想定
    final path = settings.name!;

    switch (path) {
      case DataTableSample.route:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DataTableSample(),
          settings: RouteSettings(name: settings.name),
        );
      case DataTable2Sample.route:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DataTable2Sample(),
          settings: RouteSettings(name: settings.name),
        );
      case WebDataTableSample.route:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const WebDataTableSample(),
          settings: RouteSettings(name: settings.name),
        );
      case PaginatedDataTable2Sample.route:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const PaginatedDataTable2Sample(),
          settings: RouteSettings(name: settings.name),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DataTableSample(),
        );
    }
  }
}

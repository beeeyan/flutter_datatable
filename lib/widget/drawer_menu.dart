import 'package:flutter/material.dart';
import 'package:flutter_datatable/sample/datatable_2_sample.dart';
import 'package:flutter_datatable/sample/datatable_sample.dart';
import 'package:flutter_datatable/sample/paginated_dataTable_2_sample.dart';
import 'package:flutter_datatable/sample/web_data_table_sample.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text(
              'DataTable',
            ),
            trailing: const Icon(
              Icons.chevron_right_outlined,
            ),
            onTap: () => Navigator.pushNamed(context, DataTableSample.route),
          ),
          ListTile(
            title: const Text(
              'flutter_web_data_table',
            ),
            trailing: const Icon(
              Icons.chevron_right_outlined,
            ),
            onTap: () => Navigator.pushNamed(context, WebDataTableSample.route),
          ),
          ListTile(
            title: const Text(
              'datatable_2_sample',
            ),
            trailing: const Icon(
              Icons.chevron_right_outlined,
            ),
            onTap: () => Navigator.pushNamed(context, DataTable2Sample.route),
          ),
          ListTile(
            title: const Text(
              'paginated_datatable_2_sample',
            ),
            trailing: const Icon(
              Icons.chevron_right_outlined,
            ),
            onTap: () => Navigator.pushNamed(
              context,
              PaginatedDataTable2Sample.route,
            ),
          ),
        ],
      ),
    );
  }
}

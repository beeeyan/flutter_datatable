import 'package:flutter/material.dart';
import 'package:flutter_datatable/sample/datatable_sample.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            dense: true,
            title: const Text(
              'DataTable',
            ),
            trailing: const Icon(
              Icons.chevron_right_outlined,
            ),
            onTap: () => Navigator.pushNamed(context, DataTableSample.route),
          ),
        ],
      ),
    );
  }
}

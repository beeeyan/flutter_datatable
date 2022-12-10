import 'package:flutter_datatable/domain/state/web_datatable/web_datatable_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final webDataTableStateProvider = StateNotifierProvider.autoDispose<
    WebDataTableStateNotifier, WebDataTableState>(
  WebDataTableStateNotifier.new,
);

class WebDataTableStateNotifier extends StateNotifier<WebDataTableState> {
  WebDataTableStateNotifier(this.ref) : super(const WebDataTableState());

  final Ref ref;

  void onSort({required String columnName, required bool ascending}) {
    state =
        state.copyWith(sortColumnName: columnName, sortAscending: ascending);
  }
}

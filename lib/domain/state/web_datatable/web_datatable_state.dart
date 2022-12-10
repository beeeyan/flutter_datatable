import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_datatable_state.freezed.dart';

@freezed
class WebDataTableState with _$WebDataTableState {
  const factory WebDataTableState({

    @Default(true) bool sortAscending,

    String? sortColumnName,

  }) = _WebDataTableState;
}

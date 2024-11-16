import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'spreadsheet_widget.dart' show SpreadsheetWidget;
import 'package:flutter/material.dart';

class SpreadsheetModel extends FlutterFlowModel<SpreadsheetWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}

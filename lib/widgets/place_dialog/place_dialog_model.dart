import '/flutter_flow/flutter_flow_util.dart';
import 'place_dialog_widget.dart' show PlaceDialogWidget;
import 'package:flutter/material.dart';

class PlaceDialogModel extends FlutterFlowModel<PlaceDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'fuel_levels_widget.dart' show FuelLevelsWidget;
import 'package:flutter/material.dart';

class FuelLevelsModel extends FlutterFlowModel<FuelLevelsWidget> {
  ///  Local state fields for this page.

  List<Color> colors = [
    const Color(0xff3099f8),
    const Color(0xff439a86),
    const Color(0xffee8b60)
  ];
  void addToColors(Color item) => colors.add(item);
  void removeFromColors(Color item) => colors.remove(item);
  void removeAtIndexFromColors(int index) => colors.removeAt(index);
  void insertAtIndexInColors(int index, Color item) =>
      colors.insert(index, item);
  void updateColorsAtIndex(int index, Function(Color) updateFn) =>
      colors[index] = updateFn(colors[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;

  /// Query cache managers for this widget.

  final _fuelLevelManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> fuelLevel({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _fuelLevelManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFuelLevelCache() => _fuelLevelManager.clear();
  void clearFuelLevelCacheKey(String? uniqueKey) =>
      _fuelLevelManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearFuelLevelCache();
  }
}

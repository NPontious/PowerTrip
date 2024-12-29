import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Trip Group Code

class TripGroup {
  static String getBaseUrl({
    String? url,
  }) {
    url ??= FFAppConstants.DefaultURL;
    return '$url/trip';
  }

  static Map<String, String> headers = {};
  static TripAllCall tripAllCall = TripAllCall();
  static TripNumCall tripNumCall = TripNumCall();
  static TripRangeCall tripRangeCall = TripRangeCall();
}

class TripAllCall {
  Future<ApiCallResponse> call({
    bool? includeData = true,
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TripGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TripAll',
      apiUrl: '$baseUrl/all',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'include_data': includeData,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TripNumCall {
  Future<ApiCallResponse> call({
    int? tripId = 0,
    bool? includeData = true,
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TripGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TripNum',
      apiUrl: '$baseUrl/$tripId',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'trip_id': tripId,
        'include_data': includeData,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TripRangeCall {
  Future<ApiCallResponse> call({
    int? startId = 1,
    int? endId = 5,
    bool? includeData = true,
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TripGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TripRange',
      apiUrl: '$baseUrl/range',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'start_id': startId,
        'end_id': endId,
        'include_data': includeData,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Trip Group Code

/// Start Tank Group Code

class TankGroup {
  static String getBaseUrl({
    String? url,
  }) {
    url ??= FFAppConstants.DefaultURL;
    return '$url/tank';
  }

  static Map<String, String> headers = {};
  static TankNumCall tankNumCall = TankNumCall();
  static TankAllCall tankAllCall = TankAllCall();
  static AddTankCall addTankCall = AddTankCall();
  static AddSubFuelCall addSubFuelCall = AddSubFuelCall();
  static EditSubFuelCall editSubFuelCall = EditSubFuelCall();
  static RemoveFuelCall removeFuelCall = RemoveFuelCall();
}

class TankNumCall {
  Future<ApiCallResponse> call({
    int? tankId = 1,
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TankGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TankNum',
      apiUrl: '$baseUrl/$tankId',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'tank_id': tankId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TankAllCall {
  Future<ApiCallResponse> call({
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TankGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TankAll',
      apiUrl: '$baseUrl/all',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTankCall {
  Future<ApiCallResponse> call({
    double? electricAmount,
    double? gasAmount,
    double? electricPrice,
    double? gasPrice,
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TankGroup.getBaseUrl(
      url: url,
    );

    final ffApiRequestBody = '''
{
  "Electric": {
    "Amount": $electricAmount,
    "Price": $electricPrice
  },
  "Gas": {
    "Amount": $gasAmount,
    "Price": $gasPrice
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddTank',
      apiUrl: '$baseUrl/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddSubFuelCall {
  Future<ApiCallResponse> call({
    int? tankId = 1,
    double? amount,
    double? price,
    String? type = 'gas',
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TankGroup.getBaseUrl(
      url: url,
    );

    final ffApiRequestBody = '''
{
  "fuel_type": "${escapeStringForJson(type)}",
  "amount": $amount,
  "price": $price
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddSubFuel',
      apiUrl: '$baseUrl/$tankId/add_fuel',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditSubFuelCall {
  Future<ApiCallResponse> call({
    int? tankId = 1,
    String? type = '',
    int? fuelId,
    double? amount,
    double? price,
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TankGroup.getBaseUrl(
      url: url,
    );

    final ffApiRequestBody = '''
{
  "fuel_type": "${escapeStringForJson(type)}",
  "fuel_id": $fuelId,
  "amount": $amount,
  "price": $price
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditSubFuel',
      apiUrl: '$baseUrl/$tankId/edit_fuel',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveFuelCall {
  Future<ApiCallResponse> call({
    int? tankId = 1,
    String? fuelType = 'gas',
    int? fuelId,
    String? url,
  }) async {
    url ??= FFAppConstants.DefaultURL;
    final baseUrl = TankGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'RemoveFuel',
      apiUrl: '$baseUrl/$tankId/remove_fuel',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'fuel_id': fuelId,
        'fuel_type': fuelType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Tank Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

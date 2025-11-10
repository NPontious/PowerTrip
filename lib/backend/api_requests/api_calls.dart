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
    url ??= FFAppConstants.ServerUrl;
    return '${url}/trip';
  }

  static Map<String, String> headers = {};
  static TripAllCall tripAllCall = TripAllCall();
  static TripRangeCall tripRangeCall = TripRangeCall();
  static TripNumCall tripNumCall = TripNumCall();
  static ProcessFuelCall processFuelCall = ProcessFuelCall();
}

class TripAllCall {
  Future<ApiCallResponse> call({
    bool? includeData,
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = TripGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TripAll',
      apiUrl: '${baseUrl}/all',
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

  dynamic trip(dynamic response) => getJsonField(
        response,
        r'''$.Trip''',
      );
  dynamic arrivalLoc(dynamic response) => getJsonField(
        response,
        r'''$.Trip.ArrivalLoc''',
      );
  double? arrivalLocLat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.ArrivalLoc.lat''',
      ));
  double? arrivalLocLng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.ArrivalLoc.lng''',
      ));
  String? arrivalTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Trip.ArrivalTime''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data''',
        true,
      ) as List?;
  dynamic departureLoc(dynamic response) => getJsonField(
        response,
        r'''$.Trip.DepartureLoc''',
      );
  double? departureLocLat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.DepartureLoc.lat''',
      ));
  double? departureLocLng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.DepartureLoc.lng''',
      ));
  String? departureTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Trip.DepartureTime''',
      ));
  double? distance(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.Distance''',
      ));
  dynamic fuelUsed(dynamic response) => getJsonField(
        response,
        r'''$.Trip.FuelUsed''',
      );
  List? fuelUsedElectric(dynamic response) => getJsonField(
        response,
        r'''$.Trip.FuelUsed.electric''',
        true,
      ) as List?;
  double? fuelUsedElectricAmount(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.electric[:].amount''',
      ));
  double? fuelUsedElectricPrice(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.electric[:].price''',
      ));
  List? fuelUsedGas(dynamic response) => getJsonField(
        response,
        r'''$.Trip.FuelUsed.gas''',
        true,
      ) as List?;
  double? fuelUsedGasAmount(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.gas[:].amount''',
      ));
  double? fuelUsedGasPrice(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.gas[:].price''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Trip.id''',
      ));
}

class TripRangeCall {
  Future<ApiCallResponse> call({
    int? startId = 0,
    int? endId = 1,
    bool? includeData = false,
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = TripGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TripRange',
      apiUrl: '${baseUrl}/range',
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

  List? trip(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip''',
        true,
      ) as List?;
  List? arrivalLoc(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip.ArrivalLoc''',
        true,
      ) as List?;
  List<double>? arrivalLocLat(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.ArrivalLoc.lat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? arrivalLocLng(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.ArrivalLoc.lng''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? arrivalTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.ArrivalTime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? data(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip.Data''',
        true,
      ) as List?;
  List? departureLoc(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip.DepartureLoc''',
        true,
      ) as List?;
  List<double>? departureLocLat(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.DepartureLoc.lat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? departureLocLng(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.DepartureLoc.lng''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? departureTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.DepartureTime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? distance(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.Distance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List? fuelPrice(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip.FuelPrice''',
        true,
      ) as List?;
  List? fuelUsed(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip.FuelUsed''',
        true,
      ) as List?;
  List? fuelUsedElectric(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip.FuelUsed.electric''',
        true,
      ) as List?;
  List? fuelUsedGas(dynamic response) => getJsonField(
        response,
        r'''$[:].Trip.FuelUsed.gas''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? fuelUsedElectricAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.FuelUsed.electric.amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? fuelUsedElectricPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.FuelUsed.electric.price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? fuelUsedGasAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.FuelUsed.gas.amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? fuelUsedGasPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].Trip.FuelUsed.gas.price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class TripNumCall {
  Future<ApiCallResponse> call({
    int? tripId = 0,
    bool? includeData = true,
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = TripGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TripNum',
      apiUrl: '${baseUrl}/${tripId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'trip_id': tripId,
        'inclide_data': includeData,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic trip(dynamic response) => getJsonField(
        response,
        r'''$.Trip''',
      );
  dynamic arrivalLoc(dynamic response) => getJsonField(
        response,
        r'''$.Trip.ArrivalLoc''',
      );
  double? arrivalLocLat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.ArrivalLoc.lat''',
      ));
  double? arrivalLocLng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.ArrivalLoc.lng''',
      ));
  String? arrivalTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Trip.ArrivalTime''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data''',
        true,
      ) as List?;
  List<double>? altitude(dynamic response) => (getJsonField(
        response,
        r'''$.Trip.Data[:].Altitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? avgSpeedGPS(dynamic response) => (getJsonField(
        response,
        r'''$.Trip.Data[:].Average_speed_GPS''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List? distanceTravelled(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].Distance_travelled''',
        true,
      ) as List?;
  List? engineRPM(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].Engine_RPM''',
        true,
      ) as List?;
  List? engineCoolantTemp(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].Engine_coolant_temperature''',
        true,
      ) as List?;
  List? fuelUsedPrice(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].Fuel_used_price''',
        true,
      ) as List?;
  List? instantEnginePower(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].Instant_engine_power''',
        true,
      ) as List?;
  List<double>? latitude(dynamic response) => (getJsonField(
        response,
        r'''$.Trip.Data[:].Latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? longitude(dynamic response) => (getJsonField(
        response,
        r'''$.Trip.Data[:].Longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List? mAFAirFlow(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].MAF_air_flow_rate''',
        true,
      ) as List?;
  List<double>? speed(dynamic response) => (getJsonField(
        response,
        r'''$.Trip.Data[:].Speed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List? throttle(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].Throttle_position''',
        true,
      ) as List?;
  List? vehAcceleration(dynamic response) => getJsonField(
        response,
        r'''$.Trip.Data[:].Vehicle_acceleration''',
        true,
      ) as List?;
  List<double>? vehSpeed(dynamic response) => (getJsonField(
        response,
        r'''$.Trip.Data[:].Vehicle_speed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$.Trip.Data[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic departureLoc(dynamic response) => getJsonField(
        response,
        r'''$.Trip.DepartureLoc''',
      );
  double? departureLocLat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.DepartureLoc.lat''',
      ));
  double? departureLocLng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.DepartureLoc.lng''',
      ));
  String? departureTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Trip.DepartureTime''',
      ));
  double? distance(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.Distance''',
      ));
  List? fuelUsedElectric(dynamic response) => getJsonField(
        response,
        r'''$.Trip.FuelUsed.electric''',
        true,
      ) as List?;
  List? fuelUsedGas(dynamic response) => getJsonField(
        response,
        r'''$.Trip.FuelUsed.gas''',
        true,
      ) as List?;
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Trip.id''',
      ));
  dynamic fuelUsed(dynamic response) => getJsonField(
        response,
        r'''$.Trip.FuelUsed''',
      );
  double? fuelUsedElectricAmount(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.electric.amount''',
      ));
  double? fuelUsedElectricPrice(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.electric.price''',
      ));
  double? fuelUsedGasAmount(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.gas.amount''',
      ));
  double? fuelUsedGasPrice(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Trip.FuelUsed.gas.price''',
      ));
}

class ProcessFuelCall {
  Future<ApiCallResponse> call({
    int? tripId,
    double? gasUsed,
    double? electricUsed,
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = TripGroup.getBaseUrl(
      url: url,
    );

    final ffApiRequestBody = '''
{
  "gas_used": "${gasUsed}",
  "electric_used": "${electricUsed}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Process Fuel',
      apiUrl: '${baseUrl}/trip/${tripId}/process_fuel',
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

/// End Trip Group Code

/// Start Fuel Group Code

class FuelGroup {
  static String getBaseUrl({
    String? url,
  }) {
    url ??= FFAppConstants.ServerUrl;
    return '${url}/fuel';
  }

  static Map<String, String> headers = {};
  static AddElectricCall addElectricCall = AddElectricCall();
  static AddGasCall addGasCall = AddGasCall();
  static StatusCall statusCall = StatusCall();
  static GasHistoryCall gasHistoryCall = GasHistoryCall();
  static ElectricHistoryCall electricHistoryCall = ElectricHistoryCall();
}

class AddElectricCall {
  Future<ApiCallResponse> call({
    double? amount,
    double? price,
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = FuelGroup.getBaseUrl(
      url: url,
    );

    final ffApiRequestBody = '''
{
  "amount": "${amount}",
  "price": "${price}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Electric',
      apiUrl: '${baseUrl}/electric/add',
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

class AddGasCall {
  Future<ApiCallResponse> call({
    double? amount,
    double? price,
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = FuelGroup.getBaseUrl(
      url: url,
    );

    final ffApiRequestBody = '''
{
  "amount": "${amount}",
  "price": "${price}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Gas',
      apiUrl: '${baseUrl}/gas/add',
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

class StatusCall {
  Future<ApiCallResponse> call({
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = FuelGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Status',
      apiUrl: '${baseUrl}/status',
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

  List? electricTank(dynamic response) => getJsonField(
        response,
        r'''$.electric_tank''',
        true,
      ) as List?;
  List<double>? electricTankAmount(dynamic response) => (getJsonField(
        response,
        r'''$.electric_tank[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? electricTankID(dynamic response) => (getJsonField(
        response,
        r'''$.electric_tank[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? electricTankPrice(dynamic response) => (getJsonField(
        response,
        r'''$.electric_tank[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List? gasTank(dynamic response) => getJsonField(
        response,
        r'''$.gas_tank''',
        true,
      ) as List?;
  List<double>? gasTankAmount(dynamic response) => (getJsonField(
        response,
        r'''$.gas_tank[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? gasTankID(dynamic response) => (getJsonField(
        response,
        r'''$.gas_tank[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? gasTankPrices(dynamic response) => (getJsonField(
        response,
        r'''$.gas_tank[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class GasHistoryCall {
  Future<ApiCallResponse> call({
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = FuelGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Gas History',
      apiUrl: '${baseUrl}/gas/history',
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

  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ElectricHistoryCall {
  Future<ApiCallResponse> call({
    String? url,
  }) async {
    url ??= FFAppConstants.ServerUrl;
    final baseUrl = FuelGroup.getBaseUrl(
      url: url,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Electric History',
      apiUrl: '${baseUrl}/electric/history',
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

  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

/// End Fuel Group Code

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

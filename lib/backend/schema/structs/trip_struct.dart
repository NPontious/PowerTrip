// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TripStruct extends BaseStruct {
  TripStruct({
    int? id,
    double? distance,
    LatLng? arrivalLoc,
    LatLng? departureLoc,
    DateTime? arrivalTime,
    DateTime? departureTime,
    TankStruct? fuelUsed,
    double? fuelPrice,
    List<DataStruct>? data,
  })  : _id = id,
        _distance = distance,
        _arrivalLoc = arrivalLoc,
        _departureLoc = departureLoc,
        _arrivalTime = arrivalTime,
        _departureTime = departureTime,
        _fuelUsed = fuelUsed,
        _fuelPrice = fuelPrice,
        _data = data;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "Distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "ArrivalLoc" field.
  LatLng? _arrivalLoc;
  LatLng? get arrivalLoc => _arrivalLoc;
  set arrivalLoc(LatLng? val) => _arrivalLoc = val;

  bool hasArrivalLoc() => _arrivalLoc != null;

  // "DepartureLoc" field.
  LatLng? _departureLoc;
  LatLng? get departureLoc => _departureLoc;
  set departureLoc(LatLng? val) => _departureLoc = val;

  bool hasDepartureLoc() => _departureLoc != null;

  // "ArrivalTime" field.
  DateTime? _arrivalTime;
  DateTime? get arrivalTime => _arrivalTime;
  set arrivalTime(DateTime? val) => _arrivalTime = val;

  bool hasArrivalTime() => _arrivalTime != null;

  // "DepartureTime" field.
  DateTime? _departureTime;
  DateTime? get departureTime => _departureTime;
  set departureTime(DateTime? val) => _departureTime = val;

  bool hasDepartureTime() => _departureTime != null;

  // "FuelUsed" field.
  TankStruct? _fuelUsed;
  TankStruct get fuelUsed => _fuelUsed ?? TankStruct();
  set fuelUsed(TankStruct? val) => _fuelUsed = val;

  void updateFuelUsed(Function(TankStruct) updateFn) {
    updateFn(_fuelUsed ??= TankStruct());
  }

  bool hasFuelUsed() => _fuelUsed != null;

  // "FuelPrice" field.
  double? _fuelPrice;
  double get fuelPrice => _fuelPrice ?? 0.0;
  set fuelPrice(double? val) => _fuelPrice = val;

  void incrementFuelPrice(double amount) => fuelPrice = fuelPrice + amount;

  bool hasFuelPrice() => _fuelPrice != null;

  // "Data" field.
  List<DataStruct>? _data;
  List<DataStruct> get data => _data ?? const [];
  set data(List<DataStruct>? val) => _data = val;

  void updateData(Function(List<DataStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static TripStruct fromMap(Map<String, dynamic> data) => TripStruct(
        id: castToType<int>(data['id']),
        distance: castToType<double>(data['Distance']),
        arrivalLoc: data['ArrivalLoc'] as LatLng?,
        departureLoc: data['DepartureLoc'] as LatLng?,
        arrivalTime: data['ArrivalTime'] as DateTime?,
        departureTime: data['DepartureTime'] as DateTime?,
        fuelUsed: data['FuelUsed'] is TankStruct
            ? data['FuelUsed']
            : TankStruct.maybeFromMap(data['FuelUsed']),
        fuelPrice: castToType<double>(data['FuelPrice']),
        data: getStructList(
          data['Data'],
          DataStruct.fromMap,
        ),
      );

  static TripStruct? maybeFromMap(dynamic data) =>
      data is Map ? TripStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'Distance': _distance,
        'ArrivalLoc': _arrivalLoc,
        'DepartureLoc': _departureLoc,
        'ArrivalTime': _arrivalTime,
        'DepartureTime': _departureTime,
        'FuelUsed': _fuelUsed?.toMap(),
        'FuelPrice': _fuelPrice,
        'Data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'ArrivalLoc': serializeParam(
          _arrivalLoc,
          ParamType.LatLng,
        ),
        'DepartureLoc': serializeParam(
          _departureLoc,
          ParamType.LatLng,
        ),
        'ArrivalTime': serializeParam(
          _arrivalTime,
          ParamType.DateTime,
        ),
        'DepartureTime': serializeParam(
          _departureTime,
          ParamType.DateTime,
        ),
        'FuelUsed': serializeParam(
          _fuelUsed,
          ParamType.DataStruct,
        ),
        'FuelPrice': serializeParam(
          _fuelPrice,
          ParamType.double,
        ),
        'Data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TripStruct fromSerializableMap(Map<String, dynamic> data) =>
      TripStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        distance: deserializeParam(
          data['Distance'],
          ParamType.double,
          false,
        ),
        arrivalLoc: deserializeParam(
          data['ArrivalLoc'],
          ParamType.LatLng,
          false,
        ),
        departureLoc: deserializeParam(
          data['DepartureLoc'],
          ParamType.LatLng,
          false,
        ),
        arrivalTime: deserializeParam(
          data['ArrivalTime'],
          ParamType.DateTime,
          false,
        ),
        departureTime: deserializeParam(
          data['DepartureTime'],
          ParamType.DateTime,
          false,
        ),
        fuelUsed: deserializeStructParam(
          data['FuelUsed'],
          ParamType.DataStruct,
          false,
          structBuilder: TankStruct.fromSerializableMap,
        ),
        fuelPrice: deserializeParam(
          data['FuelPrice'],
          ParamType.double,
          false,
        ),
        data: deserializeStructParam<DataStruct>(
          data['Data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TripStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TripStruct &&
        id == other.id &&
        distance == other.distance &&
        arrivalLoc == other.arrivalLoc &&
        departureLoc == other.departureLoc &&
        arrivalTime == other.arrivalTime &&
        departureTime == other.departureTime &&
        fuelUsed == other.fuelUsed &&
        fuelPrice == other.fuelPrice &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        distance,
        arrivalLoc,
        departureLoc,
        arrivalTime,
        departureTime,
        fuelUsed,
        fuelPrice,
        data
      ]);
}

TripStruct createTripStruct({
  int? id,
  double? distance,
  LatLng? arrivalLoc,
  LatLng? departureLoc,
  DateTime? arrivalTime,
  DateTime? departureTime,
  TankStruct? fuelUsed,
  double? fuelPrice,
}) =>
    TripStruct(
      id: id,
      distance: distance,
      arrivalLoc: arrivalLoc,
      departureLoc: departureLoc,
      arrivalTime: arrivalTime,
      departureTime: departureTime,
      fuelUsed: fuelUsed ?? TankStruct(),
      fuelPrice: fuelPrice,
    );

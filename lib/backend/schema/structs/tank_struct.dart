// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TankStruct extends BaseStruct {
  TankStruct({
    List<SubFuelStruct>? gas,
    List<SubFuelStruct>? electric,
  })  : _gas = gas,
        _electric = electric;

  // "gas" field.
  List<SubFuelStruct>? _gas;
  List<SubFuelStruct> get gas => _gas ?? const [];
  set gas(List<SubFuelStruct>? val) => _gas = val;

  void updateGas(Function(List<SubFuelStruct>) updateFn) {
    updateFn(_gas ??= []);
  }

  bool hasGas() => _gas != null;

  // "electric" field.
  List<SubFuelStruct>? _electric;
  List<SubFuelStruct> get electric => _electric ?? const [];
  set electric(List<SubFuelStruct>? val) => _electric = val;

  void updateElectric(Function(List<SubFuelStruct>) updateFn) {
    updateFn(_electric ??= []);
  }

  bool hasElectric() => _electric != null;

  static TankStruct fromMap(Map<String, dynamic> data) => TankStruct(
        gas: getStructList(
          data['gas'],
          SubFuelStruct.fromMap,
        ),
        electric: getStructList(
          data['electric'],
          SubFuelStruct.fromMap,
        ),
      );

  static TankStruct? maybeFromMap(dynamic data) =>
      data is Map ? TankStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'gas': _gas?.map((e) => e.toMap()).toList(),
        'electric': _electric?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'gas': serializeParam(
          _gas,
          ParamType.DataStruct,
          isList: true,
        ),
        'electric': serializeParam(
          _electric,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TankStruct fromSerializableMap(Map<String, dynamic> data) =>
      TankStruct(
        gas: deserializeStructParam<SubFuelStruct>(
          data['gas'],
          ParamType.DataStruct,
          true,
          structBuilder: SubFuelStruct.fromSerializableMap,
        ),
        electric: deserializeStructParam<SubFuelStruct>(
          data['electric'],
          ParamType.DataStruct,
          true,
          structBuilder: SubFuelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TankStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TankStruct &&
        listEquality.equals(gas, other.gas) &&
        listEquality.equals(electric, other.electric);
  }

  @override
  int get hashCode => const ListEquality().hash([gas, electric]);
}

TankStruct createTankStruct() => TankStruct();

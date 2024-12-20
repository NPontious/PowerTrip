// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuelStruct extends BaseStruct {
  FuelStruct({
    SubFuelStruct? gas,
    SubFuelStruct? electric,
  })  : _gas = gas,
        _electric = electric;

  // "gas" field.
  SubFuelStruct? _gas;
  SubFuelStruct get gas => _gas ?? SubFuelStruct();
  set gas(SubFuelStruct? val) => _gas = val;

  void updateGas(Function(SubFuelStruct) updateFn) {
    updateFn(_gas ??= SubFuelStruct());
  }

  bool hasGas() => _gas != null;

  // "electric" field.
  SubFuelStruct? _electric;
  SubFuelStruct get electric => _electric ?? SubFuelStruct();
  set electric(SubFuelStruct? val) => _electric = val;

  void updateElectric(Function(SubFuelStruct) updateFn) {
    updateFn(_electric ??= SubFuelStruct());
  }

  bool hasElectric() => _electric != null;

  static FuelStruct fromMap(Map<String, dynamic> data) => FuelStruct(
        gas: data['gas'] is SubFuelStruct
            ? data['gas']
            : SubFuelStruct.maybeFromMap(data['gas']),
        electric: data['electric'] is SubFuelStruct
            ? data['electric']
            : SubFuelStruct.maybeFromMap(data['electric']),
      );

  static FuelStruct? maybeFromMap(dynamic data) =>
      data is Map ? FuelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'gas': _gas?.toMap(),
        'electric': _electric?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'gas': serializeParam(
          _gas,
          ParamType.DataStruct,
        ),
        'electric': serializeParam(
          _electric,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FuelStruct fromSerializableMap(Map<String, dynamic> data) =>
      FuelStruct(
        gas: deserializeStructParam(
          data['gas'],
          ParamType.DataStruct,
          false,
          structBuilder: SubFuelStruct.fromSerializableMap,
        ),
        electric: deserializeStructParam(
          data['electric'],
          ParamType.DataStruct,
          false,
          structBuilder: SubFuelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FuelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FuelStruct &&
        gas == other.gas &&
        electric == other.electric;
  }

  @override
  int get hashCode => const ListEquality().hash([gas, electric]);
}

FuelStruct createFuelStruct({
  SubFuelStruct? gas,
  SubFuelStruct? electric,
}) =>
    FuelStruct(
      gas: gas ?? SubFuelStruct(),
      electric: electric ?? SubFuelStruct(),
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubFuelStruct extends BaseStruct {
  SubFuelStruct({
    double? amount,
    double? price,
  })  : _amount = amount,
        _price = price;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static SubFuelStruct fromMap(Map<String, dynamic> data) => SubFuelStruct(
        amount: castToType<double>(data['amount']),
        price: castToType<double>(data['price']),
      );

  static SubFuelStruct? maybeFromMap(dynamic data) =>
      data is Map ? SubFuelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static SubFuelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubFuelStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SubFuelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubFuelStruct &&
        amount == other.amount &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([amount, price]);
}

SubFuelStruct createSubFuelStruct({
  double? amount,
  double? price,
}) =>
    SubFuelStruct(
      amount: amount,
      price: price,
    );

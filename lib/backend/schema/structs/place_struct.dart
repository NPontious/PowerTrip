// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaceStruct extends BaseStruct {
  PlaceStruct({
    String? name,
    String? address,
    LatLng? location,
    String? city,
    String? state,
    String? country,
    String? zip,
  })  : _name = name,
        _address = address,
        _location = location,
        _city = city,
        _state = state,
        _country = country,
        _zip = zip;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;

  bool hasLocation() => _location != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  set zip(String? val) => _zip = val;

  bool hasZip() => _zip != null;

  static PlaceStruct fromMap(Map<String, dynamic> data) => PlaceStruct(
        name: data['name'] as String?,
        address: data['address'] as String?,
        location: data['location'] as LatLng?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
        zip: data['zip'] as String?,
      );

  static PlaceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlaceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'address': _address,
        'location': _location,
        'city': _city,
        'state': _state,
        'country': _country,
        'zip': _zip,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'zip': serializeParam(
          _zip,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlaceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaceStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        zip: deserializeParam(
          data['zip'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlaceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlaceStruct &&
        name == other.name &&
        address == other.address &&
        location == other.location &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        zip == other.zip;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, address, location, city, state, country, zip]);
}

PlaceStruct createPlaceStruct({
  String? name,
  String? address,
  LatLng? location,
  String? city,
  String? state,
  String? country,
  String? zip,
}) =>
    PlaceStruct(
      name: name,
      address: address,
      location: location,
      city: city,
      state: state,
      country: country,
      zip: zip,
    );

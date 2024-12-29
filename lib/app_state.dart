import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _ServerUrl = await secureStorage.getString('ff_ServerUrl') ?? _ServerUrl;
    });
    await _safeInitAsync(() async {
      _Places = (await secureStorage.getStringList('ff_Places'))
              ?.map((x) {
                try {
                  return PlaceStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Places;
    });
    await _safeInitAsync(() async {
      _CarImage = await secureStorage.getString('ff_CarImage') ?? _CarImage;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _ServerUrl = 'http://127.0.0.1:5000';
  String get ServerUrl => _ServerUrl;
  set ServerUrl(String value) {
    _ServerUrl = value;
    secureStorage.setString('ff_ServerUrl', value);
  }

  void deleteServerUrl() {
    secureStorage.delete(key: 'ff_ServerUrl');
  }

  List<PlaceStruct> _Places = [];
  List<PlaceStruct> get Places => _Places;
  set Places(List<PlaceStruct> value) {
    _Places = value;
    secureStorage.setStringList(
        'ff_Places', value.map((x) => x.serialize()).toList());
  }

  void deletePlaces() {
    secureStorage.delete(key: 'ff_Places');
  }

  void addToPlaces(PlaceStruct value) {
    Places.add(value);
    secureStorage.setStringList(
        'ff_Places', _Places.map((x) => x.serialize()).toList());
  }

  void removeFromPlaces(PlaceStruct value) {
    Places.remove(value);
    secureStorage.setStringList(
        'ff_Places', _Places.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPlaces(int index) {
    Places.removeAt(index);
    secureStorage.setStringList(
        'ff_Places', _Places.map((x) => x.serialize()).toList());
  }

  void updatePlacesAtIndex(
    int index,
    PlaceStruct Function(PlaceStruct) updateFn,
  ) {
    Places[index] = updateFn(_Places[index]);
    secureStorage.setStringList(
        'ff_Places', _Places.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPlaces(int index, PlaceStruct value) {
    Places.insert(index, value);
    secureStorage.setStringList(
        'ff_Places', _Places.map((x) => x.serialize()).toList());
  }

  String _CarImage =
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQZOzEzsRhB4ccL6BVJ-_47F8IZEr2WXEI8fVy4nTDU5jHO5Yaz';
  String get CarImage => _CarImage;
  set CarImage(String value) {
    _CarImage = value;
    secureStorage.setString('ff_CarImage', value);
  }

  void deleteCarImage() {
    secureStorage.delete(key: 'ff_CarImage');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _SweetKueh =
        await secureStorage.getStringList('ff_SweetKueh') ?? _SweetKueh;
    _DepartmentName = await secureStorage.getStringList('ff_DepartmentName') ??
        _DepartmentName;
  }

  static bool _shouldNotify = true;
  void _maybeNotifyListeners() {
    if (_shouldNotify) notifyListeners();
  }

  // Update FFAppState without notifying and rebuilding all widgets.
  static void updateSilently(VoidCallback callback) {
    try {
      _shouldNotify = false;
      callback();
    } finally {
      _shouldNotify = true;
    }
  }

  late FlutterSecureStorage secureStorage;

  List<String> _SweetKueh = [
    'ANGKU (RED BEAN)',
    'ANGKU (SALTED MUNG BEAN)',
    'ANGKU (YAM)',
    'ANGKU CLASSIC (MUNG BEAN)',
    'ANGKU PANDAN (G.MELAKA COCONUT)',
    'ANGKU PANDAN (MUNG BEAN)',
    'ANGKU SESAME (PEANUT)',
    'BINGKA BERAS',
    'BINGKA UBI',
    'BINGKA UBI BERAS',
    'EGG SPONGE CAKE (2 PCS)'
  ];
  List<String> get SweetKueh => _SweetKueh;
  set SweetKueh(List<String> _value) {
    _maybeNotifyListeners();
    _SweetKueh = _value;
    secureStorage.setStringList('ff_SweetKueh', _value);
  }

  void deleteSweetKueh() {
    _maybeNotifyListeners();
    secureStorage.delete(key: 'ff_SweetKueh');
  }

  void addToSweetKueh(String _value) {
    _maybeNotifyListeners();
    _SweetKueh.add(_value);
    secureStorage.setStringList('ff_SweetKueh', _SweetKueh);
  }

  void removeFromSweetKueh(String _value) {
    _maybeNotifyListeners();
    _SweetKueh.remove(_value);
    secureStorage.setStringList('ff_SweetKueh', _SweetKueh);
  }

  List<String> _DepartmentName = [
    'Kilang 1',
    'Kilang 2',
    'Store Atas',
    'Store Bawah'
  ];
  List<String> get DepartmentName => _DepartmentName;
  set DepartmentName(List<String> _value) {
    _maybeNotifyListeners();
    _DepartmentName = _value;
    secureStorage.setStringList('ff_DepartmentName', _value);
  }

  void deleteDepartmentName() {
    _maybeNotifyListeners();
    secureStorage.delete(key: 'ff_DepartmentName');
  }

  void addToDepartmentName(String _value) {
    _maybeNotifyListeners();
    _DepartmentName.add(_value);
    secureStorage.setStringList('ff_DepartmentName', _DepartmentName);
  }

  void removeFromDepartmentName(String _value) {
    _maybeNotifyListeners();
    _DepartmentName.remove(_value);
    secureStorage.setStringList('ff_DepartmentName', _DepartmentName);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}

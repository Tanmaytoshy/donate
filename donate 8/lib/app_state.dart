import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _Usertype = '';
  String get Usertype => _Usertype;
  set Usertype(String _value) {
    _Usertype = _value;
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
  }

  String _name = '';
  String get name => _name;
  set name(String _value) {
    _name = _value;
  }

  String _restaurantimage = '';
  String get restaurantimage => _restaurantimage;
  set restaurantimage(String _value) {
    _restaurantimage = _value;
  }

  String _ngoimage = '';
  String get ngoimage => _ngoimage;
  set ngoimage(String _value) {
    _ngoimage = _value;
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

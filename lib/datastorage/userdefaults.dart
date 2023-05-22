import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  Storage._();
  static final Storage _storage = Storage._();
  static Storage get shared => _storage;

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  
  Future<void> saveData(String key, dynamic value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, value);
  }

  Future<void>getData(String key,Function(String) onComletion) async {
    final SharedPreferences prefs = await _prefs;
    var value = prefs.getString(key);
    onComletion(value.toString());

  }
}

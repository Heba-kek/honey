import 'package:localstorage/localstorage.dart';

class LocalData {
  static final LocalData _singleton =
      LocalData._internal(new LocalStorage('honeyBeeApp.json'));

  final LocalStorage localStorage;

  factory LocalData() {
    return _singleton;
  }

  LocalData._internal(this.localStorage);

  LocalStorage getLocalStorage() {
    return this.localStorage;
  }
}

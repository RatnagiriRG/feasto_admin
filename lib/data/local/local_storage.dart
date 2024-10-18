import 'dart:html' as html;

class LocalStorage {
  Future<bool> setValue(String keys, String values) async {
    html.window.localStorage[keys] = values;
    return true;
  }

  Future<String?> readValue(String keys) async {
    return html.window.localStorage[keys];
  }

  Future<bool> clearValue(String key) async {
    html.window.localStorage.remove(key);
    return true;
  }

  Future<void> clearAllValue() async {
    html.window.localStorage.clear();
  }
}

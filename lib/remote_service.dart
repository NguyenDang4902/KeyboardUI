import 'package:http/http.dart' as http;
import 'package:flutter_keyboard_ui/keyboard.dart';

class RemoteService {
  Future<List<Keyboard>?> getKeyboard() async {
    var response = await http.Client().get(Uri.parse(
        'https://62d7812d51e6e8f06f1d61ef.mockapi.io/api/v1/Keyboard'));
    if (response.statusCode == 200) {
      var json = response.body;
      return keyboardFromJson(json);
    }
  }
}
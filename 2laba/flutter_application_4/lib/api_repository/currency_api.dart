import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final Uri currencyUrl = Uri.https("api.freecurrencyapi.com", "v1/latest",
      {"apikey": "fca_live_TFDSFBrvFWxAoTyr7XlJa2H9JvyoDla5AetOZ0cT"});
  Future<List<String>> getCurrencies() async {
    http.Response res = await http.get(currencyUrl);
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      var list = body["data"];
      List<String> currencies = (list.keys).toList();
      //print(currencies);
      return currencies;
    } else {
      throw Exception("Failed to connect to API");
    }
  }
}

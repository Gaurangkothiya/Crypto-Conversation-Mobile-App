import 'dart:convert';

import 'package:flutter_chat_demo/model/currency.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static final _key = '76028aa1be19fe6d12215918ca17ce768c1523e5';

  static Future<List<Currency>?> getCurrencies() async {
    final url ='https://api.nomics.com/v1/currencies/ticker?key=$_key&interval=1d,30d&convert=EUR&per-page=100&page=1';

    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body) as List ;

    return body.map((item) => Currency.fromJson(item)).toList();
  }
}

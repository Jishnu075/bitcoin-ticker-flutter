import 'dart:convert';

import 'package:http/http.dart' as http;

class CoinData {
  final String apiKey = '034B8F45-14C3-4CC8-B7BE-38252495F8DF';
  final String url = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD';
  Future getCoinData() async {
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {'X-CoinAPI-Key': apiKey},
    );
    if (response.statusCode == 200) {
      var data = response.body;
      var rate = jsonDecode(data)['rate'];
      return rate;
    } else {
      print(response.statusCode);
    }
  }
}

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

const String apiKey = '034B8F45-14C3-4CC8-B7BE-38252495F8DF';

class NetworkHelper {
  NetworkHelper({@required this.url});
  final String url;

  Future getData() async {
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {'X-CoinAPI-Key': apiKey},
    );
    if (response.statusCode == 200) {
      var data = response.body;
      var rate = jsonDecode(data)['rate'];
      print('rate working,networking.dart');
      // print(rate);
      return rate;
    } else {
      print(response.statusCode);
    }
  }
}

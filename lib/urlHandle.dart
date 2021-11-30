import 'package:flutter/cupertino.dart';

import 'networking.dart';

class UrlHandle {
  UrlHandle({@required this.selectedCurrency});
  final String selectedCurrency;

  Future<dynamic> result() async {
    var resultUrl =
        'https://rest.coinapi.io/v1/exchangerate/BTC/$selectedCurrency';
    NetworkHelper networkHelper = NetworkHelper(url: resultUrl);
    var result = await networkHelper.getData();
    print("urlhandle working");
    return result;
  }
}

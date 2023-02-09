import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/corona_update.dart';




class APIHelper {
  // Singleton object
  APIHelper._();
  static final APIHelper apiHelper = APIHelper._();

  Future<Corona?> fetchRates({String pacl = "India"}) async {

    String k = pacl;
    // String country = "World";
    // String apiKey = "LW73JB84Hvwg7cEacg7nLKca1BY2kqC9cRl7Y8Bb";
    String api = "https://disease.sh/v3/covid-19/countries/$k";

    http.Response res = await http.get(Uri.parse(api));

    if(res.statusCode == 200) {
      Map decodedData = json.decode(res.body);

      //row data => customdata
       Corona corona  = Corona.fromMap(data: decodedData);
     print(decodedData);
      return corona;
    }
  }
}
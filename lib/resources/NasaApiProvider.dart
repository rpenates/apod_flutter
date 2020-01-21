import 'dart:async';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:apod_flutter/models/Apod.dart';

class NasaApiProvider {
    
    Client httpClient = Client();
    static String apiKey = "DEMO_KEY";
    final String apiUrl = "https://api.nasa.gov/planetary/apod?api_key=$apiKey";

    Future <Apod> fetchCurrentApod() async {
        print ("Making http request to NASA API");

        final response = await httpClient.get(apiUrl);
        print("Api response ==> $response.body");
        if (response.statusCode == 200) {
            return Apod.fromJson(json.decode(response.body));
        } else {
            throw Exception ("Failed to make request...");
        }
    }
}
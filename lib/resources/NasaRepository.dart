
import "dart:async";
import "package:apod_flutter/resources/NasaApiProvider.dart";
import "package:apod_flutter/models/Apod.dart";

class NasaRepository {
    final nasaApiProvider = NasaApiProvider();

    Future <Apod> fetchApod() => nasaApiProvider.fetchCurrentApod();
}
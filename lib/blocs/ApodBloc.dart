import "package:apod_flutter/resources/NasaRepository.dart";
import "package:rxdart/rxdart.dart";
import "package:apod_flutter/models/Apod.dart";

class ApodBloc {
    final repository = NasaRepository();
    final apodFetcher = PublishSubject<Apod>();

    Observable<Apod> get currentApod => apodFetcher.stream;

    fetchApod () async {
        Apod currentApod = await repository.fetchApod();
        apodFetcher.sink.add(currentApod);
    }

    dispose() {
        apodFetcher.close();
    }

}

final bloc = ApodBloc();
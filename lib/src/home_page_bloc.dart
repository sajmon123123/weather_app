import 'package:appka_pogoda/src/model/weather.dart';
import 'package:rxdart/rxdart.dart';

class HomePageBloc {
  HomePageBloc();

  BehaviorSubject<WeatherData> weatherDataStream =
      BehaviorSubject<WeatherData>();

  addToStream(WeatherData data) {
    weatherDataStream.add(data);
  }
}

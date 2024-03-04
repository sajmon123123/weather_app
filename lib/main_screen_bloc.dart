import 'package:appka_pogoda/model/weather.dart';
import 'package:rxdart/rxdart.dart';

class MainScreenBloc {
  MainScreenBloc();

  BehaviorSubject<WeatherData> weatherDataStream =
      BehaviorSubject<WeatherData>();

  addToStream(WeatherData data) {
    weatherDataStream.add(data);
  }
}

import 'dart:convert';
//import 'package:flutter/services.dart' show rootBundle;
import 'package:appka_pogoda/main_screen_bloc.dart';
import 'package:appka_pogoda/model/weather.dart';
import 'package:appka_pogoda/services/weather_service.dart';
import 'package:async_builder/async_builder.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

String json =
    '{"latitude":50.0625,"longitude":19.9375,"generationtime_ms":0.025987625122070312,"utc_offset_seconds":0,"timezone":"GMT","timezone_abbreviation":"GMT","elevation":212.0,"hourly_units":{"time":"iso8601","temperature_2m":"°C"},"hourly":{"time":["2024-03-01T00:00","2024-03-01T01:00","2024-03-01T02:00"],"temperature_2m":[6.8,6.6,6.4]}}';

class _MainScreenState extends State<MainScreen> {
  WeatherService weatherService = WeatherService();
  MainScreenBloc mainScreenBloc = MainScreenBloc();
  WeatherData weatherData = WeatherData.parseWeatherData(json);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text('Weather App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () async {
          final a = await weatherService.getWeatherData();
          mainScreenBloc.addToStream(a);
          final b = a;
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: AsyncBuilder<WeatherData>(
            stream: mainScreenBloc.weatherDataStream,
            retain: true,
            initial: WeatherData(latitude: 11, longitude: 2, generationTimeMs: 1, utcOffsetSeconds: 1, timezone: '', timezoneAbbreviation: '', elevation: 1, time: ['','',''], temperature: [1,2,3]),
            builder: (context, d) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d!.time[0].toString()),
                      Text('${d.temperature[0]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[1].toString()),
                      Text('${d.temperature[1]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[2].toString()),
                      Text('${d.temperature[2]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[3].toString()),
                      Text('${d.temperature[3]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[4].toString()),
                      Text('${d.temperature[4]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[5].toString()),
                      Text('${d.temperature[5]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[6].toString()),
                      Text('${d.temperature[6]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[7].toString()),
                      Text('${d.temperature[7]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[8].toString()),
                      Text('${d.temperature[8]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[9].toString()),
                      Text('${d.temperature[9]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[10].toString()),
                      Text('${d.temperature[10]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[11].toString()),
                      Text('${d.temperature[11]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[12].toString()),
                      Text('${d.temperature[12]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[13].toString()),
                      Text('${d.temperature[13]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[14].toString()),
                      Text('${d.temperature[14]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[15].toString()),
                      Text('${d.temperature[15]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[16].toString()),
                      Text('${d.temperature[16]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[17].toString()),
                      Text('${d.temperature[17]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[18].toString()),
                      Text('${d.temperature[18]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[19].toString()),
                      Text('${d.temperature[19]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[20].toString()),
                      Text('${d.temperature[20]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[21].toString()),
                      Text('${d.temperature[21]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[22].toString()),
                      Text('${d.temperature[22]}°C'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(d.time[23].toString()),
                      Text('${d.temperature[23]}°C'),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text("Kraków",
                        style: TextStyle(
                          fontSize:30.0,
                        ),

                        ),
                      ),

                    ],
                  ),
                  //animation

                ],
              );





            }),
      ),
    );



  }
}




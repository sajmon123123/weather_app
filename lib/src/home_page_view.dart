import 'package:appka_pogoda/src/home_page_bloc.dart';
import 'package:appka_pogoda/src/model/weather.dart';
import 'package:appka_pogoda/src/services/weather_service.dart';
import 'package:appka_pogoda/src/widgets/weather_tile.dart';
import 'package:async_builder/async_builder.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherService = WeatherService();
    final homePageBloc = HomePageBloc();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () async =>
            homePageBloc.addToStream(await weatherService.getWeatherData()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Kraków'),
            AsyncBuilder<WeatherData>(
              stream: homePageBloc.weatherDataStream,
              retain: true,
              builder: (context, weather) {
                if (weather == null) {
                  return const SizedBox.shrink();
                }
                return ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return WeatherTile(
                      date: weather.time[index],
                      temperature: weather.temperature[index],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

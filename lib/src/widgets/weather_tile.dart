import 'package:flutter/material.dart';

class WeatherTile extends StatelessWidget {
  const WeatherTile({required this.date, required this.temperature, super.key});

  final String date;
  final double temperature;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(date),
            Text('$temperature °C'),
            _getIconForTemperature(temperature),
          ],
        ),
      ),
    );
  }

  Icon _getIconForTemperature(double temperature) {
    switch (temperature) {
      case > 2:
        return const Icon(Icons.sunny);
      case < 2:
        return const Icon(Icons.snowing);
      default:
        return const Icon(Icons.close);
    }
  }
}

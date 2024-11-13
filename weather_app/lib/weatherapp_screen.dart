import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  void initState() {
    super.initState();
    getCurrentWeather();
  }

  Future getCurrentWeather() async {
    try {
      String cityName = "London";
      final res = await http.get(Uri.parse(
          'http://api.openweathermap.org/data/2.5/weather?q=$cityName&APPID=486a9d8b22554935d13147f6d0f7da7e'));
      final data = jsonDecode(res.body);
      if (data['cod'] != '200') {
        throw 'An unexpected error occured';
      }
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 210,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: const Column(
                          children: [
                            Text(
                              "300 K",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.cloud,
                              size: 60,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Rain", style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "Weather Forecast",
              style: TextStyle(fontSize: 24),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItems(
                      time: '9:00', icon: Icons.sunny, temperature: '301.4 K'),
                  HourlyForecastItems(
                      time: '10:00', icon: Icons.sunny, temperature: '411.1 K'),
                  HourlyForecastItems(
                      time: '01:00', icon: Icons.cloud, temperature: '215 K'),
                  HourlyForecastItems(
                      time: '11:00', icon: Icons.sunny, temperature: '300 K'),
                  HourlyForecastItems(
                      time: '12:00', icon: Icons.cloud, temperature: '288 K'),
                ],
              ),
            ),
            const Text(
              "Additional Information",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AdditonalInfo(
                    icon: Icons.water_drop_sharp,
                    label: 'Humidity',
                    value: '94'),
                AdditonalInfo(
                    icon: Icons.wind_power, label: 'Wind Speed', value: '7.76'),
                AdditonalInfo(
                    icon: Icons.beach_access, label: 'Pressure', value: '1000'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HourlyForecastItems extends StatelessWidget {
  final String time;
  final String temperature;
  final IconData icon;
  const HourlyForecastItems(
      {super.key,
      required this.time,
      required this.icon,
      required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: SizedBox(
        width: 100,
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Column(
                  children: [
                    Text(
                      time,
                      style: const TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Icon(
                      icon,
                      size: 30,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      temperature,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AdditonalInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditonalInfo(
      {super.key,
      required this.icon,
      required this.label,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        child: Column(
          children: [
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/views/home_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const WeatherApp(), // Wrap your app
      ),
    );

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(useMaterial3: false),
      //useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeView(),
    );
  }
}

/* Bloc Steps */
// create states
// create cubit
// create function
// provide cubit
// integrate cubit
// trigger cubit
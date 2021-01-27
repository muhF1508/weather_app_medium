import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_medium/viewmodels/CityEntryViewModel.dart';
import 'package:weather_app_medium/viewmodels/ForecastViewModel.dart';
import 'package:weather_app_medium/views/HomeView.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CityEntryViewModel>(
        create: (_) => CityEntryViewModel()),
    ChangeNotifierProvider<ForecastViewModel>(
        create: (_) => ForecastViewModel()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Provider',
      home: HomeView(), // program pertama kali akan membaca di kelas ini, jika tdk ditulis maka akan error. karna program g tau mau baca apa..
      debugShowCheckedModeBanner: false,
    );
  }
}
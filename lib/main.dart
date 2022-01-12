import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
        'home': (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
      },
      // EN CASO DE ERROR O QUE NO EXISTA UNA RUTA, NAVEGAMOS A SCREEN
      // PREDEFINIDA
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const ErrorRouteScreen(),
        );
      },
    );
  }
}

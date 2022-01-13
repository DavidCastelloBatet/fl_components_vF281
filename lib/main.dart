import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // EN CASO DE ERROR O QUE NO EXISTA UNA RUTA, NAVEGAMOS A SCREEN
      // PREDEFINIDA
      // onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings)
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

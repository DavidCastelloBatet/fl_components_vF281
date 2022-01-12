import 'package:flutter/material.dart';

class ErrorRouteScreen extends StatelessWidget {
  const ErrorRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Error Route Screen',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

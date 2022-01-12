import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, index) => ListTile(
          leading: const Icon(Icons.access_time_outlined),
          title: const Text('Nombre de ruta'),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, index) => ListTile(
          leading: Icon(menuOption[index].icon),
          title: Text(menuOption[index].name),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            // CUANDO LA RUTA NO ESTA DEFINIDA
            //final route = MaterialPageRoute(
            //  builder: (context) => const Listview1Screen(),
            //);
            //Navigator.push(context, route);

            // CUANDO TENEMOS LAS RUTAS DEFINIDAS
            Navigator.pushNamed(context, menuOption[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOption.length,
      ),
    );
  }
}

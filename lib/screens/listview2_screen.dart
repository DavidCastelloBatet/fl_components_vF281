import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['The Warning', 'BabyMetal', 'Jinjer', 'Rammstein'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2 - Separated'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (BuildContext _, int __) => const Divider(),
        itemBuilder: (BuildContext contex, int index) => ListTile(
          leading: const Icon(Icons.face_retouching_natural_rounded),
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {
            final grupoActual = options[index];
            // ignore: avoid_print
            print(grupoActual);
          },
        ),
      ),
    );
  }
}

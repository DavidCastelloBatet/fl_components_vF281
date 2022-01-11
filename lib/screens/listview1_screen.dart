import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['The Warning', 'BabyMetal', 'Jinjer', 'Rammstein'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((option) => ListTile(
                    leading: const Icon(Icons.face_retouching_natural_outlined),
                    title: Text(option),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList(),
        ],
      ),
    );
  }
}

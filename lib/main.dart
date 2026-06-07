import 'package:flutter/material.dart';
import 'data/livres_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bibliothèque Lycée',
      home: Scaffold(
        appBar: AppBar(title: const Text('Bibliothèque')),
        body: ListView(
          children: livresInitiaux
              .map((l) => ListTile(title: Text(l.titre), subtitle: Text(l.auteur)))
              .toList(),
        ),
      ),
    );
  }
}

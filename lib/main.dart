import 'package:flutter/material.dart';
import 'screens/animal_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Hewan',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AnimalListPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wisata_bandung/detail_screen.dart';
import 'package:wisata_bandung/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}

class TryScreen extends StatefulWidget {
  @override
  _TryScreenState createState() => _TryScreenState();
}

class _TryScreenState extends State<TryScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: DropdownButton<String>(
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem<String>(
              child: Text('Dart'),
              value: 'Dart',
            ),
            DropdownMenuItem<String>(
              child: Text('Kotlin'),
              value: 'Kotlin',
            ),
            DropdownMenuItem<String>(
              child: Text('Swift'),
              value: 'Swift',
            ),
          ],
          value: language,
          hint: Text('Select Language'),
          onChanged: (String? value) {
            setState(() {
              language = value;
            });
          }),
    );
  }
}



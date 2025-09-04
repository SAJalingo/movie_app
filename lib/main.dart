import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _movieList = <String>[
    'The Shawshank Redemption',
    'The Godfather',
    'The Dark Night',
    'The Godfather:Part II',
    'The Lord of the Rings: The Return of the King',
    'Pulp Fiction',
    'Schindlers List',
    'Prison Break',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movie App')),
      body: Center(
        child: ListView.builder(
          itemCount: _movieList.length,
          itemBuilder: (context, index) {
            return Text(_movieList[index]);
          },
        ),
      ),
    );
  }
}

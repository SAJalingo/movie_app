import 'package:flutter/material.dart';
import 'package:movie_app/Providers/movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: const MyApp(),
    ),
  );
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
  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<MovieProvider>(
      context,
    ).loadMovies();
    return Scaffold(
      appBar: AppBar(title: Text('Movie App')),
      body: Center(
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(movies[index]),
              subtitle: Text('sub'),
              trailing: Icon(Icons.sunny),
              leading: CircleAvatar(child: Text(movies[index][0]),),
            );
            //Card(
            //child: Center(
            // child: Text(movies[index]),
            // ),
            //);
          },
        ),
      ),
    );
  }
}

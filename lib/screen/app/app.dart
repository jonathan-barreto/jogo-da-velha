import 'package:flutter/material.dart';
import 'package:jogo_da_velha/screen/home/home.dart';
import 'package:jogo_da_velha/screen/result/result.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/result':(context) => const Result(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spell_bee/controller.dart';
import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Controller(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpellingBee',
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'PartyConfetti',
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.white
        )
       ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


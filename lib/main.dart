import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_eg2/providers/counter_provider.dart';
import 'package:provider_eg2/screens/home_screen.dart';
import 'package:provider_eg2/providers/SecondPage.dart';
import 'package:provider_eg2/screens/second_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Counter(),
    ),
    ChangeNotifierProvider(
      create: (_) => ShoppingCart(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => SecondScreen()
      },
    );
  }
}

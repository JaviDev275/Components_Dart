import 'package:components/src/pages/home_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.transparent,
        elevation:6,
        shadowColor: Colors.black38,
          title: const Text('Componentes'),
        ),
        body: HomePageTemp()
      ),
    );
  }
}
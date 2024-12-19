import 'package:flutter/material.dart';

class HomePageTemp extends StatefulWidget {
  const HomePageTemp({super.key});

  @override
  State<HomePageTemp> createState() => _HomePageTempState();
}

class _HomePageTempState extends State<HomePageTemp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Components Template"),
      ),
      body:ListView(),
    );
  }
}
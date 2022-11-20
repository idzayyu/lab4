import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Список элементов",
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Список элементов"),
        ),
        body: ListView.builder(itemBuilder: (context,index){
            return Text("2 ^ $index = ${pow(2.toDouble(), index.toDouble())}");
        }),
      ),
    );
  }

}
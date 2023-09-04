import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrayNames = ["heet", "yugam", "bimal", "shiv", "viraj", "utsav"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayMedium: TextStyle(
              color: Colors.lightBlue,
              fontSize: 50,
              fontFamily: 'yugamsfont',
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
              wordSpacing: 10),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: const Center(
          child: Card(
            elevation: 30,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'yugamsfont',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

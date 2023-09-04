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
    return Scaffold(
        // backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: 

          Container(
            margin: const EdgeInsets.all(11),
            decoration: const BoxDecoration(
              color: Colors.amber,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10 ,
                  offset: Offset(5, 5),
                )
              ]
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text("HelloWorld" , 
              style: TextStyle(
                fontSize: 20 ,
              ),
              ),
            )
            ),
       
        );
  }
}

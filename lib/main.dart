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
    var arrList = ["yugam", "amish", "Patel", "Heet", "Bimal"];
    return Scaffold(
        // backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: 

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Expanded(
              flex: 2,
              child: Container(
                height: 70,
                width: 70,
                color: Colors.lightGreen,
              ),
            ),
            
            Expanded(
              flex: 3,
              child: Container(
                height: 70,
                width: 70,
                color: Colors.lightBlue,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 70,
                height: 70,
                color: Colors.red,
              ),
            ),

             Expanded(
              flex: 1,
               child: Container(
                  width: 70,
                  height: 70,
                  color: Colors.grey,
                ),
             ),
          ],
        )  


        );
  }
}

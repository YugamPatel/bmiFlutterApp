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
    var city = TextEditingController();
    var country = TextEditingController();
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
        backgroundColor: Color.fromARGB(120, 7, 92, 108),
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    // suffixText: "HI YUGAM",
                    // prefixText: "Enter",
                    // prefixIcon: IconButton(
                    //   icon: Icon(Icons.abc),
                    //   onPressed: () {
                    //     print("Hello");
                    //   },
                    // ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () => print("hello"),
                    ),
                    prefixIcon: Icon(Icons.abc),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 5,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 11,
                ),
                TextField(
                  controller: city,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 4,
                        )),
                  ),
                ),
                Container(
                  height: 11,
                ),
                TextField(
                  controller: city,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 4,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 11,
                ),
                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

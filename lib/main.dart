import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:intl/intl.dart';

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
    var dateTime = DateTime.now();
    var arrayNames = ["heet", "yugam", "bimal", "shiv", "viraj", "utsav"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor: Color.fromARGB(120, 7, 92, 108),
          appBar: AppBar(
            title: Text("Flutter"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    var time = showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                  },
                  onDoubleTap: () {
                     var date = showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2003),
                        lastDate: DateTime(2030));
                  },
                  child: const Text(
                    "hello world",
                    style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'yugamsfont',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  var showDate = showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2003),
                    lastDate: DateTime(2090),
                  );
                },
                child: Text("Submit"),
              ),
            ],
          )),
    );
  }
}

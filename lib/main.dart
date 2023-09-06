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
  var result = '';
  var bmi;
  var bgcolor = Color.fromARGB(225, 3, 201, 155);
  var msg = '';
  Widget build(BuildContext context) {
    var weight = TextEditingController();
    var height = TextEditingController();
    var heightInch = TextEditingController();
    print("hello this is yugam");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(225, 3, 201, 155),
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Container(
          color: bgcolor,
          child: Center(
            child: SizedBox(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "BMI",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: weight,
                      decoration: const InputDecoration(
                          hintText: "Please enter your weight",
                          label: Text("Please enter your weight"),
                          suffixIcon: Icon(Icons.monitor_weight)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      // enabled: weight == null,
                      keyboardType: TextInputType.number,
                      controller: height,
                      decoration: const InputDecoration(
                        hintText: "Please enter your Height (m)",
                        label: Text("Please enter your Height (m)"),
                        suffixIcon: Icon(Icons.height),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: heightInch,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "Please enter your Height (inch)",
                          label: Text("Please enter your Height (inch)"),
                          suffixIcon: Icon(Icons.height)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var w = weight.text.toString();
                      var h1 = height.text.toString();
                      var h2 = heightInch.text.toString();

                      if (w != "" && (h1 != "" || h2 != "")) {
                        int iw = int.parse(w);
                        double bmi; // Use double for precise decimal places
                        if (h1 != "") {
                          int ih1 = int.parse(h1);
                          bmi = iw / (ih1 * ih1);
                        } else {
                          int ih2 = int.parse(h2);
                          bmi = (iw * 2.2) / (ih2 * ih2);
                        }

                        // Limit BMI to 2 decimal places
                        String formattedBmi = bmi.toStringAsFixed(2);

                        if (bmi > 25) {
                          msg = "You are Overweight!!";
                          bgcolor = Colors.orange;
                        } else if (bmi < 18) {
                          msg = "You are Underweight!!";
                          bgcolor = Colors.red.shade300;
                        } else {
                          msg = "You are healthy";
                          bgcolor = Colors.green;
                        }
                        setState(() {
                          result =
                              "Your BMI is : $formattedBmi"; // Display the formatted BMI
                        });
                      } else {
                        setState(() {
                          msg = "";
                          result = "Please enter all the require information";
                        });
                      }
                    },
                    child: Text("Submit"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$msg \n $result',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'yugamsfont'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

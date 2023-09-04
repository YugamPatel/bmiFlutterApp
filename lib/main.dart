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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextField(
                  controller: city,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.email),
                      onPressed: () {},
                    ),
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              Container(
                width: 300,
                child: TextField(
                  // keyboardType: TextInputType.number,
                  controller: country,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: () {
                    String cityText = city.text.toString();
                    String countryText = country.text.toString();
                    print("Email : $cityText Pass : $countryText");
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}

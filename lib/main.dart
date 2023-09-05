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
        body: GridView.builder(
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2,
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10
          // ),

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: 10,

          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.green,
            );
          },
        ),

        // Column(
        //   children: [
        //     Container(
        //       height: 300,
        //       child: GridView.count(
        //           crossAxisCount: 4,
        //           crossAxisSpacing: 10,
        //           mainAxisSpacing: 10,
        //           children: [
        //             Container(
        //               width: 30,
        //               height: 30,
        //               color: Colors.blue,
        //             ),
        //             Container(
        //               width: 30,
        //               height: 30,
        //               color: Colors.blue,
        //             ),
        //             Container(
        //               width: 30,
        //               height: 30,
        //               color: Colors.blue,
        //             ),
        //             Container(
        //               width: 30,
        //               height: 30,
        //               color: Colors.blue,
        //             ),
        //             Container(
        //               width: 30,
        //               height: 30,
        //               color: Colors.blue,
        //             ),
        //           ]),
        //     ),

        //     Container(
        //       height: 10,
        //       width: 20,
        //     ),

        //     Container(
        //       height: 300,
        //       child: GridView.extent(
        //         maxCrossAxisExtent: 80,
        //         mainAxisSpacing: 10,
        //         crossAxisSpacing: 10,
        //         children: [
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.blue,
        //           ),
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.red,
        //           ),
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.green,
        //           ),
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.black,
        //           ),
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.purple,
        //           ),
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.pink,
        //           ),
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.orange,
        //           ),
        //           Container(
        //             width: 30,
        //             height: 30,
        //             color: Colors.grey,
        //           ),
        //         ],
        //       ),
        //     ),

        //     Container(
        //       height: 10,
        //       width: 20,
        //     ),

        //   ],
        // ),
      ),
    );
  }
}

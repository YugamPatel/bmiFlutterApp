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
    var arrayNames = ["heet", "yugam", "bimal", "shiv", "viraj", "utsav"];
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text('${index+1}'),
            title: const Text("this is text"),
            subtitle: const Text("data"),
            trailing: const Icon(Icons.account_box_sharp),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 20,
          );
        },
        itemCount: arrayNames.length,
      ),
    );
  }
}

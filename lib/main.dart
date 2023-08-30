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
        
        
        // ListView.separated( // Recycler view in android studio
        //   itemBuilder: (context, index) {
        //     return Text(
        //       arrList[index],
        //       style: const TextStyle(
        //         fontSize: 21,
        //         fontWeight: FontWeight.w400,
        //       ),
        //     );
        //   },
        //   itemCount: arrList.length,
        //   // reverse: true,
        //   separatorBuilder: (context, index) {
        //     return const Divider(height: 20,thickness: 4,);
        //   },
        // )

        // ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text(
        //       arrList[index],
        //       style: const TextStyle(
        //         fontSize: 21,
        //         fontWeight: FontWeight.w400,
        //       ),
        //     );
        //   },
        //   itemCount: arrList.length,
        //   reverse: true,
        //   itemExtent: 100,
        // )

        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: const [
        //     Padding(
        //       padding:  EdgeInsets.all(8.0),
        //       child: Text("One",style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.all(8.0),
        //       child: Text("Two",style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.all(8.0),
        //       child: Text("Three",style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.all(8.0),
        //       child: Text("Four",style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.all(8.0),
        //       child: Text("Five",style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
        //     ),
        //   ],
        // )

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8),
        //           child: SingleChildScrollView(
        //             scrollDirection: Axis.horizontal,
        //             child: Row(
        //               children: [
        //                 Container(
        //                   margin: EdgeInsets.only(right: 10),
        //                   height: 200,
        //                   width: 200,
        //                   color: Colors.grey,
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.only(right: 10),
        //                   height: 200,
        //                   width: 200,
        //                   color: Colors.grey,
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.only(right: 10),
        //                   height: 200,
        //                   width: 200,
        //                   color: Colors.grey,
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.only(right: 10),
        //                   height: 200,
        //                   width: 200,
        //                   color: Colors.grey,
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 10),
        //           height: 200,
        //           // width: 200,
        //           color: Colors.green,
        //         ),

        //         Container(
        //           margin: EdgeInsets.only(bottom: 10),
        //           height: 200,
        //           // width: 200,
        //           color: Colors.lightBlue,
        //         ),

        //         Container(
        //           margin: EdgeInsets.only(bottom: 10),
        //           height: 200,
        //           // width: 200,
        //           color: Colors.pink,
        //         ),

        //         Container(
        //           margin: EdgeInsets.only(bottom: 10),
        //           height: 200,
        //           // width: 200,
        //           color: Colors.brown,
        //         ),
        //       ],
        //     ),
        //   ),
        // )

        // Center(
        //   child: InkWell(
        //     onTap: () => print("object"),
        //     child: Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.lightBlue,
        //       child: const Center(child: Text("Yugam here")),
        //     ),
        //   ),
        // )

        //  Container(
        //   color: Colors.amber,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Text("data"),

        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 ElevatedButton(onPressed: (){}, child: Text("b1")),
        //                 ElevatedButton(onPressed: (){}, child: Text("b1")),
        //               ],
        //             ),

        //           Text("data"),
        //           Text("data"),
        //           Text("data"),
        //           Text("data"),
        //         ],
        //       ),
        //       const Text(
        //         "Text1",
        //         style: TextStyle(backgroundColor: Colors.lightBlue),
        //       ),
        //       const Text(
        //         "Text2",
        //         style: TextStyle(backgroundColor: Colors.lightBlue),
        //       ),
        //       const Text(
        //         "Text3",
        //         style: TextStyle(backgroundColor: Colors.lightBlue),
        //       ),
        //       const Text(
        //         "Text4",
        //         style: TextStyle(backgroundColor: Colors.lightBlue),
        //       ),
        //       const Text(
        //         "Text9",
        //         style: TextStyle(backgroundColor: Colors.lightBlue),
        //       ),
        //       ElevatedButton(onPressed: (){}, child: Text("data")),
        //     ],
        //   ),
        // )

        // Center(
        //   child: Container(
        //     width: 100,
        //     height: 100,
        //     child: Image.asset('assets/images/undraw_Social_growth_re_tjy9.png'),
        //     ),
        // )

        // Center(child: OutlinedButton(child: Text("Button"),onPressed: () => print("object"),))

        // Center(
        //   child: ElevatedButton(
        //     child: Text("Play") ,
        //     onPressed: () => print("object"),
        //   ),
        // )

        // TextButton(
        //   child: const Text("Hello World"),
        //   onPressed: () {
        //     print("hello hi!!");
        //   },
        //   onLongPress: () => print("object"),
        // )

        // Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.lightBlue,
        //     child: const Center(
        //       child: Text("THIS IS A TEXT",
        //       style: TextStyle(
        //         fontSize: 17 ,
        //         fontWeight: FontWeight.w600,
        //         color: Colors.red,
        //         backgroundColor: Colors.amber,
        //         letterSpacing: 2,
        //         wordSpacing: 16,
        //       ),),
        //     ),
        //   ),
        // )

        //  Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.black,
        //   child: const Text("Hi this is Yugam Patel !!!",
        //   style: TextStyle(color: Colors.white),
        //   ),
        // ),

        );
  }
}

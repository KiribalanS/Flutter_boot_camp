// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  final a = TextEditingController();

  final b = TextEditingController();

  var output;
  var add = 0;
  var subtract = 0;
  var multiply = 0;
  double divide = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("simple calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 65,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter  a",
                    ),
                    keyboardType: TextInputType.number,
                    controller: a,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                SizedBox(
                  width: 65,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "enter b",
                    ),
                    controller: b,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                add = int.parse(a.text) + int.parse(b.text);
                setState(() {});
              },
              child: SizedBox(
                  width: 100,
                  child: Center(child: Text("Add" + "\t = " + add.toString()))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                subtract = int.parse(a.text) - int.parse(b.text);
                setState(() {});
              },
              child: SizedBox(
                  width: 100,
                  child: Center(
                      child: Text("Subtract" + "\t = " + subtract.toString()))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                multiply = int.parse(a.text) * int.parse(b.text);
                setState(() {});
              },
              child: SizedBox(
                  width: 100,
                  child: Center(
                      child: Text("Multiply" + "\t = " + multiply.toString()))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                divide = int.parse(a.text) / int.parse(b.text);
                setState(() {});
              },
              child: SizedBox(
                  width: 100,
                  child: Center(
                      child: Text("Divide" + "\t = " + divide.toString()))),
            ),
          ),
        ],
      ),
    );
  }
}

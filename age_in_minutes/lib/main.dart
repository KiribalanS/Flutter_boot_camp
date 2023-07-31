import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AgeCalculator(),
    );
  }
}

class AgeCalculator extends StatefulWidget {
  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                DateTime currentDate = DateTime.now();
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: currentDate,
                );

                if (pickedDate!.isAfter(DateTime.now())) {
                  setState(() {
                    _result = "Please select your Date of Birth.";
                  });
                  return;
                }

                DateTime now = DateTime.now();
                Duration ageDifference = now.difference(pickedDate);
                int totalMinutes = ageDifference.inMinutes;
                setState(() {
                  _result = "You have lived for $totalMinutes minutes.";
                });
              },
              child: Text("Select Date of Birth"),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

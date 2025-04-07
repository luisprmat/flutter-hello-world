import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${clickCounter == 1 ? '' : 's'}', style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
            child: Icon(Icons.refresh_outlined),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
            child: Icon(Icons.plus_one),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              clickCounter--;
              setState(() {});
            },
            child: Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter == 0 ? counter = 0 : counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Counter is',
              style: TextStyle(fontSize: 30, color: Colors.blueGrey),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: increment,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: decrement,
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: reset,
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}

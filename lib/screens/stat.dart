import 'package:flutter/material.dart';

class Counter extends StatefulWidget { 
  @override
  _CounterState createState() => _CounterState(); 
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter: $count',
              
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

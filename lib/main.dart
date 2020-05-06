import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: "test",
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('Tap "-" to decrement')),
              Center(child: CounterWidget()),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('Tap "+" to increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count;

  @override
  void initState() {
    _count = 10;
    super.initState();
  }

  void _incrementCounter() {
    _count++;
  }

  void _decrementCounter() {
    if (_count == 0) {
      return;
    }
    _count--;
  }

  @override
  Widget build(BuildContext ctx) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
        color: Colors.red,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _decrementCounter();
              });
            },
          ),
          Text(
            '$_count',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _incrementCounter();
              });
            },
          ),
        ],
      ),
    );
  }
}

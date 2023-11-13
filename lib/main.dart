import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class GreetingWidget extends StatelessWidget {
  final String greeting;

  GreetingWidget(this.greeting);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xffbeec89),
        padding: EdgeInsets.all(16),
        child: Text(
          greeting,
          style: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
            color: Color(0xff377a39),
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
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Flutter', // New Text widget for "Flutter" at the top
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0xff377a39), // Change the color as needed
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Counter Value: $counter',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment Counter'),
        ),
        GreetingWidget('Hello, Hola, Привет, Bonjour!'),
        GreetingWidget('Welcome to WidgetsPractice!'),
        GreetingWidget('Hope you will have a good day!'),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Practice'),
        ),
        backgroundColor: Color(0xffbeec89),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}

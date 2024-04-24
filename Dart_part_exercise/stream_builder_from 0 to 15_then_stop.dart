import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StreamBuilder Example',
      home: StreamDemo(),
    );
  }
}

class StreamDemo extends StatefulWidget {
  @override
  _StreamDemoState createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  final StreamController<int> _controller = StreamController<int>();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    // Start a timer to increment the counter every second and add it to the stream
    Timer.periodic(Duration(seconds: 1), (timer) {
      _counter++;
      if (_counter <= 15) {
        _controller.add(_counter);
      } else {
        timer.cancel(); // Stop the timer when the count reaches 200
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder Example'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _controller.stream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            // Display the data from the stream
            return Text(
              'Value from Stream: ${snapshot.data}',
              style: TextStyle(fontSize: 20),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller
        .close(); // Close the stream controller when disposing the widget
    super.dispose();
  }
}

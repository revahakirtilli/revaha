import 'package:flutter/material.dart';

void main() {
  runApp(TonightApp());
}

class TonightApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tonight App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TonightHomePage(),
    );
  }
}

class TonightHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tonight'),
      ),
      body: Center(
        child: Text('Welcome to Tonight App!'),
      ),
    );
  }
}
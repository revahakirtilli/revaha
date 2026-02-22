import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String selectedScenario;

  ResultScreen({required this.selectedScenario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Screen'),
      ),
      body: Center(
        child: Text(
          'You selected: $selectedScenario',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
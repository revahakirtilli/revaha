import 'package:flutter/material.dart';

class SetupScreen extends StatefulWidget {
  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  String? selectedMode;
  String? selectedMood;
  int? selectedDuration;

  final List<String> modes = ['Mode 1', 'Mode 2', 'Mode 3'];
  final List<String> moods = ['Happy', 'Sad', 'Relaxed'];
  final List<int> durations = [5, 10, 15, 30];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setup Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              hint: Text('Select Mode'),
              value: selectedMode,
              onChanged: (String? newValue) {
                setState(() {
                  selectedMode = newValue;
                });
              },
              items: modes.map<DropdownMenuItem<String>>((String mode) {
                return DropdownMenuItem<String>(
                  value: mode,
                  child: Text(mode),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              hint: Text('Select Mood'),
              value: selectedMood,
              onChanged: (String? newValue) {
                setState(() {
                  selectedMood = newValue;
                });
              },
              items: moods.map<DropdownMenuItem<String>>((String mood) {
                return DropdownMenuItem<String>(
                  value: mood,
                  child: Text(mood),
                );
              }).toList(),
            ),
            DropdownButton<int>(
              hint: Text('Select Duration (minutes)'),
              value: selectedDuration,
              onChanged: (int? newValue) {
                setState(() {
                  selectedDuration = newValue;
                });
              },
              items: durations.map<DropdownMenuItem<int>>((int duration) {
                return DropdownMenuItem<int>(
                  value: duration,
                  child: Text(duration.toString()),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle the setup logic here
              },
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
}
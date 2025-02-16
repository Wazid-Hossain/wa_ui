import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonthSwitcher(),
    );
  }
}

class MonthSwitcher extends StatefulWidget {
  @override
  _MonthSwitcherState createState() => _MonthSwitcherState();
}

class _MonthSwitcherState extends State<MonthSwitcher> {
  int _currentMonthIndex = DateTime.now().month - 1; // 0-based index for months

  final List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  void _previousMonth() {
    setState(() {
      _currentMonthIndex = (_currentMonthIndex - 1) % 12;
      if (_currentMonthIndex < 0) {
        _currentMonthIndex = 11;
      }
    });
  }

  void _nextMonth() {
    setState(() {
      _currentMonthIndex = (_currentMonthIndex + 1) % 12;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Month Switcher'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Month: ${_months[_currentMonthIndex]}',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _previousMonth,
                    child: Text('Previous'),
                  ),
                  ElevatedButton(
                    onPressed: _nextMonth,
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

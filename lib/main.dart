// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Application",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        // brightness: Brightness.dark
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          UserDatePicker(),
          UserTimePicker()
        ]),
      ),
    );
  }
}

class UserDatePicker extends StatefulWidget {
  const UserDatePicker({super.key});

  @override
  State<UserDatePicker> createState() => _UserDatePickerState();
}

class _UserDatePickerState extends State<UserDatePicker> {

  DateTime _dateTime = DateTime.now();

  void _showDate() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025)).then((value) {
          setState(() {
            _dateTime =value!;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_dateTime.toString(), style: TextStyle(fontSize: 20),),
        MaterialButton(
          color: Colors.black,
          onPressed: _showDate,
          child: Text(
            "PICK DATE",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class UserTimePicker extends StatefulWidget {
  const UserTimePicker({super.key});

  @override
  State<UserTimePicker> createState() => _UserTimePickerState();
}

class _UserTimePickerState extends State<UserTimePicker> {

  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  void _showTime(){
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      setState(() {
          _timeOfDay = value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_timeOfDay.format(context).toString(), style: TextStyle(fontSize: 20),),
        MaterialButton(
          color: Colors.black,
          onPressed: _showTime,
          child: Text(
            "PICK TIME",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

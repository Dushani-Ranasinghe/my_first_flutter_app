import 'package:flutter/material.dart';

class UserSlider extends StatefulWidget {
  const UserSlider({super.key});

  @override
  State<UserSlider> createState() => _UserSliderState();
}

class _UserSliderState extends State<UserSlider> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _currentValue.toStringAsFixed(0),
          style: TextStyle(fontSize: 30),
        ),
        Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 10,
            label: _currentValue.toStringAsFixed(0),
            activeColor: Colors.red,
            inactiveColor: Colors.red[100],
            thumbColor: Colors.redAccent[200],
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            })
      ],
    );
  }
}

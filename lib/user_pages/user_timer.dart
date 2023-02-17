
import 'dart:async';

import 'package:flutter/material.dart';

class UserTimer extends StatefulWidget {
  const UserTimer({super.key});

  @override
  State<UserTimer> createState() => _UserTimerState();
}

class _UserTimerState extends State<UserTimer> {
  
  int timeLeft = 5;
  void _startclock(){
    Timer.periodic(Duration(seconds: 1), (timer) { 
      setState(() {
        if(timeLeft>0){
timeLeft--;
        }
        else{
          timer.cancel();
        }
        
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(timeLeft==0?"DONE": timeLeft.toString(), style: TextStyle(fontSize: 70),),
        MaterialButton(
        onPressed: _startclock, 
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("START", style: TextStyle(fontSize: 30,color: Colors.white),),
        ),
        )
      ],
    );
  }
}
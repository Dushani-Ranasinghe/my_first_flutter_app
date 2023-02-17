
import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  const UserInput({super.key});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  //use to keep track of user inputs
  final _textcontroller = TextEditingController();

  // store user input 
  String userPost = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //display text
        Expanded(child: SizedBox(
          child: Center(child: Text(userPost, style: TextStyle(fontSize: 25),)),
        )),
        //text field input
        TextField(
          controller: _textcontroller,
          decoration: InputDecoration(border:OutlineInputBorder(), hintText: "What's up?", suffixIcon: IconButton(onPressed: (() {
            _textcontroller.clear();
          }), icon: const Icon(Icons.clear),) ),
        ),
        //post button
        MaterialButton(onPressed: (){
          setState(() {
             userPost = _textcontroller.text;
          });
        },
        color: Colors.blue[500],
        child: Text("Post",style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}

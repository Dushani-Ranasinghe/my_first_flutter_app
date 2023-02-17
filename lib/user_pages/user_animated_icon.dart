import 'package:flutter/material.dart';

class UserAnimatedIcon extends StatefulWidget {
  const UserAnimatedIcon({super.key});

  @override
  State<UserAnimatedIcon> createState() => _UserAnimatedIconState();
}

//use "with SingleTickerProviderStateMixin" when using animation
class _UserAnimatedIconState extends State<UserAnimatedIcon> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

bool videoPlaying = false; 
  void _iconTapped(){
    if(videoPlaying==false){
_animationController.forward();
videoPlaying=true;
    }
    else{
      _animationController.reverse();
      videoPlaying = false; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _iconTapped,
      child: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: _animationController,
        size: 150,
        color: Colors.red,
      ),
    );
  }
}
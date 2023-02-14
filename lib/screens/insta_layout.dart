import 'package:flutter/material.dart';
import '../components/post.dart';
import '../components/story.dart';

class InstaLayout extends StatelessWidget {
  const InstaLayout({
    Key? key,
    required List stories,
    required List posts,
  }) : _stories = stories, _posts = posts, super(key: key);

  final List _stories;
  final List _posts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder( 
            itemCount: _stories.length,itemBuilder: ((context, index) {
            return Story(storyText: _stories[index],);
          }),
            scrollDirection: Axis.horizontal,
          ),
        ),
        Expanded(
          child: ListView.builder(
          itemCount: _posts.length,
          itemBuilder: (context, index){
          return Post(postText: _posts[index]);
      }),
        ),
      ]
    );
  }
}



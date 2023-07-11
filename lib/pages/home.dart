import 'package:flutter/material.dart';
import 'package:instaclonetut/util/bubble_stories.dart';
import 'package:instaclonetut/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = [
    'Artificial Human',
    'NirajSV',
    'Artificial Human',
    'NirajSV',
    'Artificial Human',
    'NirajSV',
    'Artificial Human',
    'NirajSV',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: const [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          )),
      body: Column(
        children: [
          //STORIES
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: ((context, index) {
                return BubbleStories(text: people[index]);
              }),
            ),
          ),

          //posts

          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                    
                  );
                }),
          ),
        ],
      ),
    );
  }
}

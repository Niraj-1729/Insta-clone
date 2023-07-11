import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        //below the posts -? buttons ans comments

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //liked by
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(children: [
            Text('Liked by '),
            Text(
              'sarthak_buddy ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('and'),
            Text(
              ' 5693690 others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
        ),

        //captions
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name ,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Wake up and work until you achive it , their no other life '),
              ],
            ),
          ),
        ),
        //comments
      ],
    );
  }
}

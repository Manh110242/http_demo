import 'package:flutter/material.dart';
import 'package:http_demo/model/model.dart';

class Item1 extends StatelessWidget {
  Posts post;
  Item1({required this.post});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("User_id: ${post.userId}    Id: ${post.id}"),
            SizedBox(height: 10,),
            Text("Title: " + post.title, textAlign: TextAlign.justify,),
            SizedBox(height: 10,),
            Text("Body: " + post.body,textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}

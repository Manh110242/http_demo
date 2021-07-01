import 'package:flutter/material.dart';
import 'package:http_demo/bloc/bloc_post.dart';
import 'package:http_demo/item/item1.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  BlocPost bloc = new BlocPost();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: bloc.getData2(),
        builder: (_, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (_, index) => Item1(post: snapshot.data[index]));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

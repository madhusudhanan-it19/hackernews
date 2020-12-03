import 'package:demo_hacker_news/story.dart';
import 'package:flutter/material.dart';

class CommentListPage extends StatelessWidget {
  final List<Comment> comments;
  final Story story;

  CommentListPage({this.story, this.comments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text(this.story.title),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: this.comments.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Container(
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text("${1 + index}",
                        style: TextStyle(fontSize: 22, color: Colors.yellow))),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(this.comments[index].text,
                      style: TextStyle(fontSize: 18)),
                ));
          },
        ));
  }
}

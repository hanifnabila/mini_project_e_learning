import 'package:e_learning/model/course.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Course course;
  final bool isDone;
  final Function(bool? value) onPressed;

  const ListItem(
      {required this.course,
      required this.isDone,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: isDone ? Colors.white60 : Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(course.imageAsset),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(),
                )),
            Checkbox(
              checkColor: Colors.blueAccent,
              value: isDone,
              onChanged: onPressed,
            ),
          ],
        ));
  }
}

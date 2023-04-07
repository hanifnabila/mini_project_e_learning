import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/course.dart';

class DoneCourseList extends StatelessWidget {
  final List<Course> doneCourseList;
  const DoneCourseList({Key? key, required this.doneCourseList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whistlist"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        final Course course = doneCourseList[index];
        return Card(
          color: Colors.white60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                course.name,
                style: const TextStyle(fontSize: 16.0),
              )
            ],
          ),
        );
      },
      itemCount: doneCourseList.length,
      ),
    );
  }
}

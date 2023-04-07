import 'package:e_learning/model/course.dart';
import 'package:e_learning/screens/list_item.dart';
import 'package:flutter/material.dart';

class CourseList extends StatefulWidget {
  final List<Course> doneCourseList;

  const CourseList({Key? key, required this.doneCourseList}) : super(key: key);

  @override
  _CourseListState createState() => _CourseListState(doneCourseList);
}

class _CourseListState extends State<CourseList> {
  final List<Course> doneCourseList;
  final List<Course> courseList = [
    Course(
        name: 'Laravel',
        imageAsset: 'assets/images/Laravel',
        description: 'description'),
    Course(
        name: 'Flutter',
        imageAsset: 'assets/images/Flutter',
        description: 'description'),
    Course(
        name: 'Phyton',
        imageAsset: 'assets/images/Phyton',
        description: 'description'),
    Course(
        name: 'React',
        imageAsset: 'assets/images/React',
        description: 'description'),
  ];

  _CourseListState(this.doneCourseList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Course course = courseList[index];
        return InkWell(
          onTap: () {},
          child: ListItem(
            course: course,
            isDone: doneCourseList.contains(course),
            onPressed: (bool? value) {
              setState(() {
                if (value != null) {
                  value
                      ? doneCourseList.add(course)
                      : doneCourseList.remove(course);
                }
              });
            },
          ),
        );
      },
      itemCount: courseList.length,
    );
  }
}

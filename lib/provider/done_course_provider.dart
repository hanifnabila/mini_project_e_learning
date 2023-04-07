import 'package:e_learning/screens/done_course_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:e_learning/model/course.dart';
class DoneCourseProvider extends ChangeNotifier{
  final List<Course> _doneCourseList = [];

  List<Course> get DoneCourseList => _doneCourseList;

  void complete(Course course, bool isDone) {
    isDone ? _doneCourseList.add(course) : _doneCourseList.remove(course);
    notifyListeners();
  } 
}
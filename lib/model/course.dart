class Course {
  String name;
  String imageAsset;
  String description;

  Course(
      {required this.name,
      required this.imageAsset,
      required this.description});

  var CourseList = [
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
}

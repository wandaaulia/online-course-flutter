class ListCourse {
  String name;
  String teacher;
  String day;
  String date;
  bool joinC;

  ListCourse({
    required this.name,
    required this.teacher,
    required this.day,
    required this.date,
    required this.joinC,
  });
}

var courseList = [
  ListCourse(
      name: 'Mobile design',
      teacher: 'by Grace',
      day: 'Sat',
      date: '25',
      joinC: false),
  ListCourse(
      name: 'UX design',
      teacher: 'by Valrose',
      day: 'Fri',
      date: '30',
      joinC: false),
];

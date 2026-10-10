class Students {
  final int roll;
  final String studentName;
  final List<SubjectsMarks> subjects;

  Students({
    required this.studentName,
    required this.roll,
    required this.subjects,
  });

  String markSheetPrint() {
    final buffer = StringBuffer();
    buffer.writeln("--Roll# $roll Student Name: $studentName");
    for (var subject in subjects) {
      buffer.writeln(
          "  Subject: ${subject.subjectName.padRight(10)}, Marks: ${subject.obtainedMarks}/${subject.totalMarks}");
    }
    return buffer.toString();
  }
}

class SubjectsMarks {
  final String subjectName;
  final double totalMarks;
  final double obtainedMarks;

  SubjectsMarks({
    required this.subjectName,
    required this.totalMarks,
    required this.obtainedMarks,
  });
}

void main() {
  final List<Students> markSheet = [
    Students(
      roll: 001,
      studentName: "Ali",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 90),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 95),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 88),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 85),
      ],
    ),
  ];

  // Iterate through the list to call the method on each student object
  for (final student in markSheet) {
    print("--------------------------------------");
    print(student.markSheetPrint());
  }
}
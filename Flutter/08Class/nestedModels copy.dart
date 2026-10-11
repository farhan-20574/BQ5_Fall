class Students {
  final int roll;
  final String studentName;
  final List<SubjectsMarks> subjects;

  Students({
    required this.studentName,
    required this.roll,
    required this.subjects,
  });

  SString markSheetPrint(){
    
    return "--Roll# ${roll} Student Name;${studentName} \n Subject: ${subjects.subjectName}, Marks: ${subjects.obtainedMarks}/${subjects.totalMarks}";
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
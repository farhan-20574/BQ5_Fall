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
    String output = "Roll number: $roll \n Student Name: $studentName ";
    
    double totalMarksSum = 0;
    double obtainedMarksSum = 0;

    subjects.forEach((s) {
      output += "\n Subject ${s.subjectName}: Marks: ${s.obtainedMarks}/${s.totalMarks}";
      totalMarksSum += s.totalMarks;
      obtainedMarksSum += s.obtainedMarks;
    });

    output += "\n--------------------------------------";
    output += "\n Grand Total: $obtainedMarksSum / $totalMarksSum";
    
    return output;
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
      roll: 1,
      studentName: "Ali",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 90),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 95),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 88),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 85),
      ],
    ),
    Students(
      roll: 2,
      studentName: "Sara",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 85),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 98),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 92),
      ],
    ),
  ];

  markSheet.forEach((student) {
    print("--------------------------------------");
    print(student.markSheetPrint());
    print("--------------------------------------");
  });
}
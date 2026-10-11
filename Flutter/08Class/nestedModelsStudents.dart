class Students {
  final int roll;
  final String studentName;
  final List<SubjectsMarks> subjects;

  Students({
    required this.studentName,
    required this.roll,
    required this.subjects,
  });

  // Calculate total obtained marks
  double get totalObtainedMarks {
    double total = 0;

    subjects.forEach((subject) {
      total += subject.obtainedMarks;
    });

    return total;
  }

  // Calculate total possible marks
  double get totalMarks {
    double total = 0;

    subjects.forEach((subject) {
      total += subject.totalMarks;
    });

    return total;
  }

  // Calculate percentage
  double get percentage {
    if (totalMarks == 0) return 0;
    return (totalObtainedMarks / totalMarks) * 100;
  }

  // Print individual marksheet
  String markSheetPrint() {
    String output =
        "Roll Number: $roll\nStudent Name: $studentName";

    subjects.forEach((subject) {
      output +=
          "\nSubject ${subject.subjectName}: "
          "${subject.obtainedMarks}/${subject.totalMarks}";
    });

    output += "\n--------------------------------------";
    output +=
        "\nGrand Total: $totalObtainedMarks / $totalMarks";
    output +=
        "\nPercentage: ${percentage.toStringAsFixed(2)}%";

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
    Students(
      roll: 3,
      studentName: "Ahmed",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 78),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 85),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 80),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 82),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 88),
      ],
    ),
    Students(
      roll: 4,
      studentName: "Ayesha",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 89),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 94),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 91),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 96),
      ],
    ),
    Students(
      roll: 5,
      studentName: "Usman",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 70),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 75),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 72),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 80),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 77),
      ],
    ),
    Students(
      roll: 6,
      studentName: "Fatima",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 88),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 94),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 90),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 86),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 93),
      ],
    ),
    Students(
      roll: 7,
      studentName: "Hamza",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 65),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 72),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 68),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 75),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 70),
      ],
    ),
    Students(
      roll: 8,
      studentName: "Zainab",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 95),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 97),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 93),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 96),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 98),
      ],
    ),
    Students(
      roll: 9,
      studentName: "Bilal",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 82),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 78),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 85),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 80),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 84),
      ],
    ),
    Students(
      roll: 10,
      studentName: "Hira",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 90),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 88),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 91),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 89),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 94),
      ],
    ),
    Students(
      roll: 11,
      studentName: "Usama",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 75),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 81),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 79),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 73),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 77),
      ],
    ),
    Students(
      roll: 12,
      studentName: "Maryam",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 87),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 89),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 95),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 90),
      ],
    ),
    Students(
      roll: 13,
      studentName: "Hassan",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 68),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 74),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 70),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 76),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 72),
      ],
    ),
    Students(
      roll: 14,
      studentName: "Iqra",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 93),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 90),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 96),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 94),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 91),
      ],
    ),
    Students(
      roll: 15,
      studentName: "Danish",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 80),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 83),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 77),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 85),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 81),
      ],
    ),
    Students(
      roll: 16,
      studentName: "Laiba",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 96),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 94),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 98),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 97),
      ],
    ),
    Students(
      roll: 17,
      studentName: "Saad",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 72),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 69),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 75),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 71),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 78),
      ],
    ),
    Students(
      roll: 18,
      studentName: "Noor",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 89),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 95),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 87),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 92),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 94),
      ],
    ),
    Students(
      roll: 19,
      studentName: "Rehan",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 76),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 82),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 79),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 84),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 80),
      ],
    ),
    Students(
      roll: 20,
      studentName: "Anaya",
      subjects: [
        SubjectsMarks(subjectName: "English", totalMarks: 100, obtainedMarks: 91),
        SubjectsMarks(subjectName: "Math", totalMarks: 100, obtainedMarks: 96),
        SubjectsMarks(subjectName: "Physics", totalMarks: 100, obtainedMarks: 94),
        SubjectsMarks(subjectName: "Chemistry", totalMarks: 100, obtainedMarks: 90),
        SubjectsMarks(subjectName: "Biology", totalMarks: 100, obtainedMarks: 95),
      ],
    ),
  ];

  // Print all students' marksheets
  markSheet.forEach((student) {
    print("\n======================================");
    print(student.markSheetPrint());
    print("======================================");
  });

  // Create a copy and sort by total marks
  final sortedStudents = [...markSheet];

  sortedStudents.sort(
    (a, b) =>
        b.totalObtainedMarks.compareTo(a.totalObtainedMarks),
  );

  // Print Top 3 students using forEach
  print("\n========== TOP 3 STUDENTS ==========");

  int rank = 0;

  sortedStudents.take(3).forEach((student) {
    rank++;

    print("\nRank: $rank");
    print("Roll Number: ${student.roll}");
    print("Student Name: ${student.studentName}");
    print(
      "Total Marks: ${student.totalObtainedMarks} / ${student.totalMarks}",
    );
    print("Percentage: ${student.percentage.toStringAsFixed(2)}%");
    print("--------------------------------------");
  });
}
/// Represents a Student with rollNo-specific marks.
class Students {
  final String name;
  final int rollNo;
  final int computerMarks;
  final int? urduMarks;
  final int scienceMarks;
  final int? physicsMarks;
  final int englishMarks;

  const Students({
    required this.name,
    required this.rollNo,
    required this.computerMarks,
    this.urduMarks,
    required this.scienceMarks,
    this.physicsMarks,
    required this.englishMarks,
  });

//----------Students grade--------------------------
int TotalMarks = computerMarks + urduMarks + scienceMarks + physicsMarks + englishMarks;

}

void main() {
  final List<Students> studentsList = [
    const Students(
      name: 'Ali',
      rollNo: 456,
      computerMarks: 95,
      urduMarks: 80,
      scienceMarks: 85,
      physicsMarks: 88,
      englishMarks: 82,
    ),
    const Students(
      name: 'Sara',
      rollNo: 457,
      computerMarks: 70,
      urduMarks: 75,
      scienceMarks: 72,
      physicsMarks: 90,
      englishMarks: 78,
    ),
    const Students(
      name: 'Ahmed',
      rollNo: 458,
      computerMarks: 45,
      urduMarks: 50,
      scienceMarks: 48,
      physicsMarks: 40,
      englishMarks: 55,
    ),
  ];

  print('List of Students:');
  studentsList.forEach((student) {
    print("${student.name},${student.englishMarks}" );
  });
}
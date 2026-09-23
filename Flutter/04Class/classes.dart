class ChModel {
    String titleName;
    String chName;
    int likeCount;

    ChModel({
      required this.titleName,
      required this.chName,
      required this.likeCount,
    });

    @override
    String toString() {
      return 'Title: $titleName, Channel: $chName, Likes: $likeCount';
    }
  }

void main() {
  
  List<ChModel> chList1 = [
    ChModel(
      titleName: "Course 1 web",
      chName: "Learn JS",
      likeCount: 34,
    ),
  ];

  print(chList1);
  
for (var item in chList1) {
  print(item.titleName);
  print(item.chName);
  print(item.likeCount);
}

}


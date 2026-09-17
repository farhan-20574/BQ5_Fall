void main() {
  int a = 10;
  int b = 3;

  //print("The result of a+b is = ${a + b}");
  
  List <int> abc = [2,5, 7, 8,35];
  
  //print ("List on 3 item is = ${abc[3]}");
  //print ("Sum of List 3 & 2 item is ${abc[3]+abc[3]}");
  
  List <int> soc1 = [2,5, 7, 8,34];
  List <int> soc2 = [4,9, 10, 8,35];
  
  //print ("Sum of List 1[2] & 2[3] item is ${soc1[2]+soc2[3]}");
  
  print ("inital list ABC is $abc");
  
  abc.add(45);
  
  print ("after updating list ABC is $abc");

abc.addAll([56,78,89]);
  
  print ("after new list ABC is $abc");

}

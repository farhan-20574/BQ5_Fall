void main() {

dynamic pizza =  MenuList('Supreme', 1100);
dynamic noodles = MenuList('Knnor',250);

print (pizza.format());
print (noodles.format());
}

class  MenuList {
  String title;
  double price;

    MenuList ( this.title,  this.price);

String format(){

    return "$title ----> $price";
}
}

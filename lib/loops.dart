import 'dart:async';
import 'dart:io';

void main() {
  String name = "   Dileep";
  //String name1 = name.trim();
  // print(name1);
  print(name.trim());
  print(name);

  String d = "demo";
  print(d.toUpperCase());
  //print(name);
  //print(name1);

  int a = 10;
  int b = 15;
  a = a + b;
  b = a - b;
  a = a - b;
  print(" a value is ${a}");
  print("b value is ${b}");
  //int c;
  //c = a + b;
  //print("sum of value is ${c}");

  String s = "flutter";
  String r = " ";
  for (int i = s.length - 1; i >= 0; i--) {
    r = r + s[i];
  }
  print(r);

// creating a list

  List<String> names = ["dileep", "mani", "hari"];

  names.add("mahesh");
  print(names);
  for (String item in names) {
    print(item.startsWith('m'));
  }

  // Write a dart program to check if the number is odd or even
  int x = 10;

  if (x % 2 == 0) {
    print("the number ${x} is even");
  } else {
    print("the number ${x} is odd");
  }

  // write a dart program to print your name 15 times
  String myName = "Dileep";
  for (int i = 0; i < 15; i++) {
    print("my name is ${myName}");
  }

  // write a dart program to print only even numbers between 20 to 80
  for (int i = 20; i <= 80; i++) {
    if (i % 2 == 0) {
      print("the number ${i} is even");
    }
  }

}

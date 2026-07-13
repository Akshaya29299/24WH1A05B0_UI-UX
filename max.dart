import 'dart:io';

void main(){
  print("Enter First Number");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter Secobd Number");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter Third Number");
  int c = int.parse(stdin.readLineSync()!);
  int largest = a;
  if(b > largest)
  largest = b;
  if(c > largest)
  largest = c;
  print("Largest Elemet: = $largest");
}
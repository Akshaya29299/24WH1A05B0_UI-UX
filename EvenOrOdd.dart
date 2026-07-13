import 'dart:io';

void main(){
  print("Enter any number");
  int n = int.parse(stdin.readLineSync()!);
  if(n % 2 == 0){
    print("$n is even number");
  }
  else{
    print("$n is odd number");
  }
}
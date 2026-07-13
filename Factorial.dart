import 'dart:io';

void main(){
  print("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  int fact = 1;
  for(int i = 1 ; i <= n ; i++){
    fact *= i;
  }
  print("Factorial of $n: $fact");
}
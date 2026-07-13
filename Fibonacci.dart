import 'dart:io';

int main(){
  print("Enter number of terms: ");
  int n = int.parse(stdin.readLineSync()!);
  int a = 0 , b = 1;
  print("Fibonacci series");
  for(int i = 0 ; i < n ; i++){
    stdout.write("$a ");
    int c = a + b;
    a = b;
    b = c;
  }
  return 0;
}
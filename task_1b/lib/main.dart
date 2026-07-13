main() {
  // Variables
  var name = "Akshaya";
  int age = 19;
  double height = 5.4;
  bool isAdult = age >= 18 ? true : false;

  // Print Statements
  print("Name: $name");
  print("Age: $age");
  print("Height: $height");

  // Conditional Statement
  if (isAdult) {
    print("$name is an Adult");
  } else {
    print("$name is not an Adult");
  }

  // Function Call
  greet(name);

  // Loop
  for (int i = 1; i <= 5; i++) {
    print("Loop Iteration $i");
    if (i == 3) {
      break;
    }
  }

  // Friends Array
  List<String> friends = [
    "Naga Sree",
    "Sreevalli",
    "Sameeksha",
    "Harika",
    "Runa"
  ];

  // Looping through friends array
  for (String friend in friends) {
    print("Hello, $friend");
  }

  // Creating an object of Person class
  Person person = Person(name, age, height);
  person.introduce();

  // Exception Handling
  try {
    int result = 10 ~/ 10;
    print("Result: $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}

void greet(String name) {
  print("Welcome to UI Lab, $name");
}

class Person {
  String name;
  int age;
  double height;
  bool isAdult;

  // Constructor
  Person(this.name, this.age, this.height) : isAdult = age >= 18;

  // Method
  void introduce() {
    print(
        "My name is $name. I am $age years old and my height is $height feet.");
  }
}
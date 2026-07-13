import 'package:flutter/material.dart';

void main() {
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Information',
      home: StudentScreen(),
    );
  }
}

class StudentScreen extends StatefulWidget {
  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController rollNoController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController cgpaController = TextEditingController();

  String res = "";

  void displayStudentInfo() {
    setState(() {
      res = '''
Student Name: ${nameController.text}
Roll No: ${rollNoController.text}
Branch: ${branchController.text}
CGPA: ${cgpaController.text}
''';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Information(24WH1A05B0_AkshayaReddy)"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Student Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                controller: rollNoController,
                decoration: InputDecoration(
                  labelText: "Roll No",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                controller: branchController,
                decoration: InputDecoration(
                  labelText: "Branch",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                controller: cgpaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "CGPA",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: displayStudentInfo,
                child: Text("Display Information"),
              ),
              SizedBox(height: 20),

              Text(
                res,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('(24WH1A05B0_AkshayaReddy) Layout Widgets'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Row Layout
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Row Layout",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Column Layout
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Column Layout",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.purple,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.teal,
                  ),
                ],
              ),

              // Reduced space here from 30 to 10
              const SizedBox(height: 10),

              // Stack Layout
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Stack Layout",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
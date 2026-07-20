import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediaQuery Demo',
      home: const ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Screen Width and Height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Check Device Type
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 900;
    bool isDesktop = screenWidth >= 900;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery & Breakpoints"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Screen Width : ${screenWidth.toStringAsFixed(0)}",
              style: const TextStyle(fontSize: 22),
            ),
            Text(
              "Screen Height : ${screenHeight.toStringAsFixed(0)}",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),

            if (isMobile)
              const Text(
                "Device : MOBILE",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),

            if (isTablet)
              const Text(
                "Device : TABLET",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

            if (isDesktop)
              const Text(
                "Device : DESKTOP",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

            const SizedBox(height: 30),

            Expanded(
              child: isMobile
                  // MOBILE VIEW
                  ? Column(
                      children: [
                        buildBox(Colors.red, "Student Details"),
                        const SizedBox(height: 15),
                        buildBox(Colors.orange, "Attendance"),
                        const SizedBox(height: 15),
                        buildBox(Colors.green, "Marks"),
                      ],
                    )
                  // TABLET & DESKTOP VIEW
                  : Row(
                      children: [
                        Expanded(
                          child: buildBox(
                            Colors.red,
                            "Student Details",
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: buildBox(
                            Colors.orange,
                            "Attendance",
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: buildBox(
                            Colors.green,
                            "Marks",
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBox(Color color, String title) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
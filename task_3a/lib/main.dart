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
      home: const ResponsiveDashboard(),
    );
  }
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String orientation =
        MediaQuery.of(context).orientation == Orientation.portrait
            ? "Portrait"
            : "Landscape";

    String deviceType;
    int columns;
    double cardRatio;

    // Breakpoints
    if (width < 600) {
      deviceType = "Mobile";
      columns = 1;
      cardRatio = 3;
    } else if (width < 900) {
      deviceType = "Tablet";
      columns = 2;
      cardRatio = 2;
    } else {
      deviceType = "Desktop";
      columns = 3;
      cardRatio = 1.5;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Student Dashboard"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Screen Width: ${width.toStringAsFixed(0)}",
              style: const TextStyle(fontSize: 18),
            ),

            Text(
              "Screen Height: ${height.toStringAsFixed(0)}",
              style: const TextStyle(fontSize: 18),
            ),

            Text(
              "Orientation: $orientation",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "24WH1A05B0_AkshayaReddy",
              style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 10),

            Text(
              "$deviceType Layout",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: columns,

                // Space between cards
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,

                // Changes card size according to device
                childAspectRatio: cardRatio,

                children: const [
                  DashboardCard(
                    icon: Icons.person,
                    title: "Student Details",
                    color: Colors.red,
                  ),

                  DashboardCard(
                    icon: Icons.assignment,
                    title: "Attendance",
                    color: Colors.orange,
                  ),

                  DashboardCard(
                    icon: Icons.school,
                    title: "Marks",
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(
            icon,
            size: 45,
            color: Colors.white,
          ),

          const SizedBox(height: 10),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
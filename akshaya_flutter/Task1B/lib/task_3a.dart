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
      title: 'Responsive Student Dashboard',
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;

    String deviceType;
    int columns;

    if (width < 600) {
      deviceType = "Mobile";
      columns = 1;
    } else if (width < 900) {
      deviceType = "Tablet";
      columns = 2;
    } else {
      deviceType = "Desktop";
      columns = 3;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Student Dashboard"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Screen Width : ${width.toStringAsFixed(0)}"),
            Text("Screen Height : ${height.toStringAsFixed(0)}"),
            Text("Orientation : ${orientation.name}"),
            const SizedBox(height: 10),
            Text(
              "$deviceType Layout",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 15),

            Expanded(
              child: GridView.count(
                crossAxisCount: columns,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                children: const [
                  DashboardCard(
                    title: "Student Details",
                    icon: Icons.person,
                    color: Colors.red,
                  ),
                  DashboardCard(
                    title: "Attendance",
                    icon: Icons.assignment,
                    color: Colors.orange,
                  ),
                  DashboardCard(
                    title: "Marks",
                    icon: Icons.school,
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
  final String title;
  final IconData icon;
  final Color color;

  const DashboardCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

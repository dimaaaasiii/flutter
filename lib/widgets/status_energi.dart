import 'package:flutter/material.dart';

class EnergyStatusCard extends StatelessWidget {
  final String source;
  final String status;
  final String powerUsage;
  final Color color;

  const EnergyStatusCard({
    required this.source,
    required this.status,
    required this.powerUsage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.bolt, color: color, size: 40),
            SizedBox(height: 10),
            Text(
              source,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Status: $status"),
            Text("Daya: $powerUsage"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/status_energi.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Energi'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            EnergyStatusCard(
              source: "Energi Surya",
              status: "Aktif",
              powerUsage: "120W",
              color: Colors.amber.shade600,
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.water_drop, color: Colors.blue),
                title: Text("Pompa Air"),
                subtitle: Text("Status: Aktif"),
                trailing: Icon(Icons.check_circle, color: Colors.green),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.thermostat, color: Colors.red),
                title: Text("Suhu Air"),
                subtitle: Text("28°C"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.cloud, color: Colors.grey),
                title: Text("Kelembapan Ruangan"),
                subtitle: Text("72%"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

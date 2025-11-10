import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, String>> historyData = [
    {"time": "2025-11-10 08:00", "event": "Switch ke Energi Surya"},
    {"time": "2025-11-10 13:00", "event": "Pompa Air Otomatis Aktif"},
    {"time": "2025-11-10 17:00", "event": "Switch ke Listrik PLN"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Riwayat Aktivitas")),
      body: ListView.builder(
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.history, color: Colors.green),
              title: Text(historyData[index]["event"]!),
              subtitle: Text(historyData[index]["time"]!),
            ),
          );
        },
      ),
    );
  }
}

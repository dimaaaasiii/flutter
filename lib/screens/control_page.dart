import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  bool isAuto = true;
  bool pumpOn = true;

  String energySource = "Energi Surya";

  void toggleMode() {
    setState(() {
      isAuto = !isAuto;
    });
  }

  void togglePump() {
    setState(() {
      pumpOn = !pumpOn;
    });
  }

  void switchEnergy() {
    setState(() {
      energySource = (energySource == "Energi Surya")
          ? "Listrik PLN"
          : "Energi Surya";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kontrol Sistem")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Mode Kontrol: ${isAuto ? 'Otomatis' : 'Manual'}",
              style: TextStyle(fontSize: 18),
            ),
            SwitchListTile(
              title: Text("Ubah Mode Otomatis/Manual"),
              value: isAuto,
              onChanged: (val) => toggleMode(),
            ),
            Divider(),
            Text(
              "Sumber Energi: $energySource",
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton.icon(
              onPressed: switchEnergy,
              icon: Icon(Icons.bolt),
              label: Text("Ganti Sumber Energi"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            Divider(),
            Text(
              "Pompa Air: ${pumpOn ? 'Aktif' : 'Nonaktif'}",
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton.icon(
              onPressed: togglePump,
              icon: Icon(Icons.water_drop),
              label: Text(pumpOn ? "Matikan Pompa" : "Nyalakan Pompa"),
            ),
          ],
        ),
      ),
    );
  }
}

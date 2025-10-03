import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> predictions = [
    {"date": "July 27, 2025", "aqi": "150", "status": "UNHEALTHY"},
    {"date": "Feb 17, 2025", "aqi": "250", "status": "HAZARDOUS"},
    {"date": "May 27, 2025", "aqi": "50", "status": "GOOD"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Air Quality Prediction"),
              ),
              SizedBox(height: 20),
              ...predictions.map((p) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      title: Text(p["date"]!,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text("AQI: ${p["aqi"]}"),
                      trailing: Text(p["status"]!,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
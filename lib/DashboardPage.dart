import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("DashBoard")),
              SizedBox(height: 20),

              // AQI Indicator
              Text("78", style: TextStyle(fontSize: 48, color: Colors.green)),
              Text("AQI - Moderate"),

              SizedBox(height: 10),
              LinearProgressIndicator(
                value: 0.5,
                color: Colors.orange,
                backgroundColor: Colors.grey[700],
              ),
              SizedBox(height: 10),
              Text("Traffic: Medium"),
              LinearProgressIndicator(
                value: 0.65,
                color: Colors.green,
                backgroundColor: Colors.grey[700],
              ),
              SizedBox(height: 20),

              Text("City Health Index (0-100)"),
              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Recommendation:",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("1. Air Quality is Moderate"),
                    Text("2. Safe to go outside, but consider a mask"),
                    Text("3. Avoid high traffic zones during 2-5 PM"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
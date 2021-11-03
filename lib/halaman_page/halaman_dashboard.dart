import 'package:flutter/material.dart';

class HalamanDashboard extends StatefulWidget {
  const HalamanDashboard({Key? key}) : super(key: key);

  @override
  _HalamanDashboardState createState() => _HalamanDashboardState();
}


class _HalamanDashboardState extends State<HalamanDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor : Colors.blue,
    body: Center(
        child: Text('Dashboard Page',
          style: TextStyle(
                  color: Colors.white
          ),
    ),
    ),
    );
  }
}


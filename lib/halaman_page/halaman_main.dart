import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:rikialparisi_19552011138/halaman_page/halaman_dashboard.dart';
import 'package:rikialparisi_19552011138/halaman_page/halaman_tanggal.dart';
import 'package:rikialparisi_19552011138/halaman_page/halaman_waktu.dart';


class HalamanMain extends StatefulWidget {
  const HalamanMain({Key? key}) : super(key: key);

  @override
  _HalamanMainState createState() => _HalamanMainState();
  }

  class _HalamanMainState extends State<HalamanMain> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
      },
         children: [
         HalamanDashboard(),
         HalamanTanggal(),
         HalamanWaktu(),
  ],
  )
  ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
        setState(() {
           _selectedIndex = index;
        });
         _pageController.jumpToPage(index);
        },
         items: [
           BottomNavyBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              activeColor: Colors.blueAccent,
              inactiveColor: Colors.blueAccent,
               ),
           BottomNavyBarItem(
              icon: Icon(Icons.date_range),
              title: Text('Date'),
              activeColor: Colors.redAccent,
              inactiveColor: Colors.redAccent,
               ),
           BottomNavyBarItem(
              icon: Icon(Icons.timer),
              title: Text('Time'),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.greenAccent,
               ),
        ],
      ),
    );
  }
}
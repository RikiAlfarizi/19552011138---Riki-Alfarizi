import 'package:flutter/material.dart';
import 'package:rikialparisi_19552011138/halaman_page/halaman_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HalamanMain(),
    );
  }


}
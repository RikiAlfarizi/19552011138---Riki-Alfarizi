import 'package:flutter/material.dart';

class HalamanWaktu extends StatefulWidget {
  const HalamanWaktu({Key? key}) : super(key: key);

  @override
  _HalamanWaktuState createState() => _HalamanWaktuState();
  }

  class _HalamanWaktuState extends State<HalamanWaktu> {
    TimeOfDay _pilihwaktu = TimeOfDay.now();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Time Picker'),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.green,
                  primary: Colors.white,
                ),
                onPressed: () {
                  _memanggilwaktu(context);
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text('Time Value :' + _pilihwaktu.format(context),
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      );
    }

    _memanggilwaktu(context) async {
      final _timePick = await showTimePicker(
          context: context,
          initialTime: _pilihwaktu,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                alwaysUse24HourFormat: true,
              ),
              child: child!,
            );
          });

      if (_timePick != null) {
        setState(() {
          _pilihwaktu = _timePick;
        });
      }
    }
}
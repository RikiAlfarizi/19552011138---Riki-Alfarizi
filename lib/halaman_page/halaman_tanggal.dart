import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HalamanTanggal extends StatefulWidget {
  const HalamanTanggal({Key? key}) : super(key: key);

  @override
  _HalamanTanggalState createState() => _HalamanTanggalState();
  }

class _HalamanTanggalState extends State<HalamanTanggal> {
  DateTime _pilihtanggal = DateTime.now();
  final DateFormat _formattanggal = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Date Picker'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                ),
                onPressed: () {
                  _memanggiltanggal(context);
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text('Date Value : ' + _formattanggal.format(_pilihtanggal),
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
      ),
    );
  }

  _memanggiltanggal(context) async {
    final _datePick = await showDatePicker(
      context: context,
      initialDate: _pilihtanggal,
      firstDate: _pilihtanggal.subtract(Duration(days: 30)
      ),
      lastDate: DateTime(_pilihtanggal.year + 1),
    );

    if(_datePick != null) {
      setState(() {
        _pilihtanggal = _datePick;
      });
    }
  }

}





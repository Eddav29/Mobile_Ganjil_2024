// Membuat widget baru untuk DatePicker
import 'dart:async';
import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key}) : super(key: key);

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime selectedDate = DateTime.now(); // Variable/State untuk tanggal

  // Initial SelectDate Flutter
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(' ')[0]), // Menampilkan tanggal
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _selectDate(context);
              // ignore: avoid_print
              print(selectedDate.day + selectedDate.month + selectedDate.year);
            },
            child: const Text('Pilih Tanggal'),
          ),
        ],
      ),
    );
  }
}
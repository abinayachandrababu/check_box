import 'package:flutter/material.dart';

class CheckBoxListview extends StatefulWidget {
  const CheckBoxListview({super.key});

  @override
  State<CheckBoxListview> createState() => _CheckBoxListviewState();
}

class _CheckBoxListviewState extends State<CheckBoxListview> {

  bool _isChecked = false;

  List<String> _sites = [
    'yahoo.com',
    'gmail.com',
    'youtube.com',
    'flutter.io',
    'google.com',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox in Listview'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: _sites.map((site) => CheckboxListTile(
            title: Text(site),
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value!;
              });
            }
        )).toList(),
      ),
    );
  }
}

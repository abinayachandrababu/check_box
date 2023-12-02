import 'package:flutter/material.dart';

class CheckboxListviewScreen extends StatefulWidget {
  const CheckboxListviewScreen({super.key});

  @override
  State<CheckboxListviewScreen> createState() => _CheckboxListviewScreenState();
}

class _CheckboxListviewScreenState extends State<CheckboxListviewScreen> {

  List<String> _sites = [
    'yahoo.com',
    'gmail.com',
    'youtube.com',
    'flutter.io',
    'google.com',
  ];

  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_sites.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox in Listview'),
      ),
      body: ListView.builder(
          itemCount: _sites.length,
          itemBuilder: (context, index) {
            return Material(
              child: CheckboxListTile(
                  title: Text(_sites[index]),
                  value: _isChecked[index],
                  onChanged: (value) {
                    setState(() {
                      _isChecked[index] = value!;
                    });
                  }),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String SelectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDown List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 70,
              // color: Colors.red,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey.shade400,
                isExpanded: true,
                value: SelectedValue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                items: <String>[
                  'Orange',
                  'Apple',
                  'Banana',
                  'Mango',
                  'Grapes'
                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value));
                }).toList(),
                onChanged: (String? newvalue){
                  setState(() {
                    SelectedValue = newvalue!;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  final items = ['Pilihan 1', 'Pilihan 2', 'Pilihan 3', 'Pilihan 4'];
  String selectedValue = '-';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Item selected is "$selectedValue"'),
        const SizedBox(height: 10.0),
        ...items
            .map((item) => RadioListTile<String>(
                  title: Text(item),
                  value: item,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    selectedValue = value!;
                    setState(() {});
                  },
                ))
            .toList(),
      ],
    );
  }
}

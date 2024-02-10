import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool terms = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Item selected is "$terms"'),
        const SizedBox(height: 10.0),
        CheckboxListTile(
          value: terms,
          title: const Text('Syarat dan Ketentuan'),
          onChanged: (value) {
            terms = value!;
            setState(() {});
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        /**
         * DropdownButton = Widget untuk menampilkan dropdown menu
         * value = nilai terpilih dari dropdown menu
         * items = daftar item yang ditampilkan dalam dropdown menu
         * onChanged = fungsi yang dipanggil ketika nilai terpilih berubah
         */
        value: selectedItem.isEmpty ? null : selectedItem,
        hint: const Text('Pilih item'),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          selectedItem = value!;
          setState(() {});
        },
      ),
    );
  }
}

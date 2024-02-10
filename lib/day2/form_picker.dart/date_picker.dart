import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // untuk memformat datetime, diperlukan dependency 'intl'
    // documentation : https://pub.dev/packages/intl
    final dateFormatted = DateFormat('dd MMMM yyyy').format(selectedDate);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tanggal dipilih: $dateFormatted'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => selectDate(context),
            child: const Text('Pilih Tanggal'),
          ),
        ],
      ),
    );
  }
}

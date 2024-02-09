import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Expanded'),
      ),
      body: const ColoredBox(
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              /**
             * Expanded = memaksa child widget untuk menggunakan seluruh ruang yang tersedia dalam parent widget Flex, sesuai dengan proporsi yang ditentukan.
             * flex = menentukan proporsi child dalam parent
             * FlexFit.tight = child memenuhi semua ruang yang tersedia
             * FlexFit.loose = child mengikuti ukuran minimalnya
             */
              flex: 3,
              child: ColoredBox(
                color: Colors.white,
                child: Center(
                  child: Text('Belajar Flutter'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ColoredBox(
                color: Colors.red,
                child: Center(
                  child: Text('Belajar Flutter'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

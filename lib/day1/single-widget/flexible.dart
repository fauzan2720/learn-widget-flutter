import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Flexible'),
      ),
      body: const ColoredBox(
        color: Colors.blue,
        child: Column(
          children: [
            Flexible(
              /**
               * Flexible = memberikan fleksibilitas dalam menentukan seberapa besar ruang yang harus digunakan oleh child widget, tetapi tidak memaksa child untuk mengisi seluruh ruang yang tersedia.
               * flex = menentukan proporsi child dalam parent
               */
              flex: 1,
              child: ColoredBox(
                color: Colors.white,
                child: Center(
                  child: Text('Belajar Flutter'),
                ),
              ),
            ),
            Flexible(
              flex: 3,
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

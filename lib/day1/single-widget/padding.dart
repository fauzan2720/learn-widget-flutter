import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Padding'),
      ),
      body: const ColoredBox(
        color: Colors.blue,
        child: Center(
          child: ColoredBox(
            color: Colors.white,
            child: Padding(
              /**
             * Padding = jarak antar konten child dan parent
             * EdgeInsets.zero = membersihkan padding
             * EdgeInsets.all = padding untuk semua sisi
             * EdgeInsets.fromLTRB = padding dari sisi kiri, atas, kanan, bawah
             * EdgeInsets.only = padding khusus ke sisi tertentu
             * EdgeInsets.symmetric = padding simetris secara horizontal atau vertikal
             */
              padding: EdgeInsets.all(8.0),
              child: Text('Belajar Flutter'),
            ),
          ),
        ),
      ),
    );
  }
}

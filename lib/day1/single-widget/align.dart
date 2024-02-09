import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Align'),
      ),
      body: const ColoredBox(
        color: Colors.blue,
        child: Align(
          /**
           * Align = Widget untuk mengatur posisi child dalam parent
           * Alignment.topLeft = child diatur ke pojok kiri atas
           * Alignment.center = child diatur ke tengah-tengah parent
           * Alignment.bottomRight = child diatur ke pojok kanan bawah
           * Alignment(0.5, 0.5) = child diatur ke tengah-tengah parent (custom)
           * Alignment(1.0, -1.0) = child diatur ke pojok kanan atas (custom)
           */
          alignment: Alignment.center,
          child: ColoredBox(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Belajar Flutter'),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Column'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Column(
          /**
           * Column = Widget untuk menempatkan child widgets secara vertikal
           * mainAxisAlignment = untuk mengatur posisi vertikal child widgets
           * CrossAxisAlignment = untuk mengatur posisi horizontal child widgets
           * MainAxisAlignment.start: Memposisikan child widgets ke awal dari parent widget.
           * MainAxisAlignment.center: Memposisikan child widgets di tengah-tengah parent widget.
           * MainAxisAlignment.end: Memposisikan child widgets ke akhir dari parent widget.
           * MainAxisAlignment.spaceEvenly: Memposisikan child secara merata dengan jarak yang sama di antara mereka dan di sekitar sisi luar child pada axis utama.
           * MainAxisAlignment.spaceBetween: Memposisikan child secara merata, dengan jarak sama antar child, namun tidak ada jarak di luar child pada axis utama.
           * MainAxisAlignment.spaceAround: Memposisikan child secara merata, dengan jarak yang sama di antara child dan di luar child pada axis utama.
           */
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColoredBox(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Belajar Flutter'),
              ),
            ),
            ColoredBox(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Belajar Flutter'),
              ),
            ),
            ColoredBox(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Belajar Flutter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

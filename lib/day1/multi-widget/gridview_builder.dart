import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget GridView.builder'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        /**
         * GridView.builder = Widget untuk menampilkan daftar item dalam grid secara dinamis
         * gridDelegate = delegate untuk mengatur tata letak grid
         * itemCount = jumlah total item dalam grid
         * itemBuilder = builder function untuk membuat setiap item dalam grid
         */
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Jumlah kolom dalam grid
          crossAxisSpacing: 10, // Jarak antara kolom
          mainAxisSpacing: 20, // Jarak antara baris
          childAspectRatio: 9 / 16, // Rasio aspek child widget dalam grid
        ),
        itemCount: 12, // Jumlah total item dalam grid
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue[100 * (index % 9 + 1)],
            alignment: Alignment.center,
            child: Text('Item ${index + 1}'),
          );
        },
      ),
    );
  }
}

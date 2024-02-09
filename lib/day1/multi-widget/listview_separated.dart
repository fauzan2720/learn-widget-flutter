import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget ListView.separated'),
      ),
      body: ListView.separated(
        /**
         * ListView.builder = Widget untuk menampilkan daftar item secara dinamis
         * itemCount = jumlah total item dalam daftar
         * itemBuilder = builder function untuk membuat setiap item dalam daftar
         * separatorBuilder = builder function untuk membuat setiap pemisah antara item dalam daftar
         */
        itemCount: 15,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          final item = index + 1;
          return ListTile(
            title: Text('Item $item'),
            subtitle: Text('Subtitle $item'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              debugPrint('item $item selected');
            },
          );
        },
      ),
    );
  }
}

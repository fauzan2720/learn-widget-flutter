import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget ListView'),
      ),
      body: ListView(
        /**
         * ListView = Widget untuk menampilkan daftar item secara berurutan, dan sifatnya bisa scroll
         */
        children: const [
          ListTile(
            title: Text('Item 1'),
            subtitle: Text('Subtitle 1'),
            leading: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text('Item 2'),
            subtitle: Text('Subtitle 2'),
            leading: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text('Item 3'),
            subtitle: Text('Subtitle 3'),
            leading: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

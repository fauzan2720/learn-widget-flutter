import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // button dengan style bawaan flutter
          ElevatedButton(
            onPressed: () {
              debugPrint('Tombol ElevatedButton ditekan!');
            },
            child: const Text('ElevatedButton'),
          ),
          const SizedBox(height: 20.0),

          // text button tanpa style
          TextButton(
            onPressed: () {
              debugPrint('Tombol TextButton ditekan!');
            },
            child: const Text('TextButton'),
          ),
          const SizedBox(height: 20.0),

          // button yang dirounded dan border
          OutlinedButton(
            onPressed: () {
              debugPrint('Tombol OutlinedButton ditekan!');
            },
            child: const Text('OutlinedButton'),
          ),
          const SizedBox(height: 20.0),

          // button dengan icon
          IconButton(
            onPressed: () {
              debugPrint('IconButton ditekan!');
            },
            icon: const Icon(Icons.thumb_up),
            tooltip: 'IconButton',
          ),
          const SizedBox(height: 20.0),

          // button pada child widget yang di custom (tanpa memberikan efek klik)
          GestureDetector(
            onTap: () {
              debugPrint('GestureDetector ditekan!');
            },
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('GestureDetector'),
                  Text('GestureDetector'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),

          // button pada child widget yang di custom (memberikan efek klik)
          InkWell(
            onTap: () {
              debugPrint('InkWell ditekan!');
            },
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('InkWell'),
                  Text('InkWell'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Center'),
      ),
      body: const ColoredBox(
        color: Colors.blue,
        child: Center(
          child: ColoredBox(
            color: Colors.white,
            child: Text('Belajar Flutter'),
          ),
        ),
      ),
    );
  }
}

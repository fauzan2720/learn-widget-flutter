import 'package:flutter/material.dart';
import 'package:learn_flutter/day2/form/checkbox.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: CheckboxWidget(),
      ),
    );
  }
}

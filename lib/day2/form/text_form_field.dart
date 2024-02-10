import 'package:flutter/material.dart';

class TextFormFielWidget extends StatefulWidget {
  const TextFormFielWidget({super.key});

  @override
  State<TextFormFielWidget> createState() => _TextFormFielWidgetState();
}

class _TextFormFielWidgetState extends State<TextFormFielWidget> {
  final textController = TextEditingController();
  final numberController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Text is "${textController.text}"'),
        Text('Number is "${numberController.text}"'),
        const SizedBox(height: 20.0),
        TextFormField(
          /**
           * TextFormField = Widget untuk input teks dengan validasi
           * controller = controller untuk mengontrol nilai yang dimasukkan
           * onChanged = untuk mengambil value dari inputan user
           * decoration = untuk mengatur dekorasi input field 
           */
          controller: textController,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            hintText: 'Masukkan teks',
            labelText: 'Teks',
            prefixIcon: Icon(Icons.text_fields),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {});
          },
        ),
        const SizedBox(height: 16.0),
        TextFormField(
          controller: numberController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: 'Masukkan number',
            labelText: 'Number',
            prefixIcon: Icon(Icons.numbers),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }
}

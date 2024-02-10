import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerWidget extends StatefulWidget {
  const FilePickerWidget({super.key});

  @override
  State<FilePickerWidget> createState() => _FilePickerWidgetState();
}

class _FilePickerWidgetState extends State<FilePickerWidget> {
  List<PlatformFile> files = [];

  // agar dapat menampilkan file dalam local storage, diperlukan dependency 'file_picker'
  // documentation : https://pub.dev/packages/file_picker
  Future<void> openFileExplorer() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: true,
      );
      if (result != null) {
        // Do something with the picked file(s)
        debugPrint('File(s) picked: ${result.files}');
        files.addAll(result.files);
        setState(() {});
      } else {
        // User canceled the picker
        debugPrint('User canceled the picker');
      }
    } catch (e) {
      debugPrint('Error while picking the file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...files.isNotEmpty
            ? files
                .map((item) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Image.file(File(item.path!)),
                    ))
                .toList()
            : [const Icon(Icons.image, size: 100.0)],
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: openFileExplorer,
          child: const Text('Open File Picker'),
        ),
      ],
    );
  }
}

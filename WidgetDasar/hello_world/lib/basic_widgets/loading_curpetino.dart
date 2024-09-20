/// The line `import 'package:flutter/material.dart';` in Dart is used to import the material library
/// from the Flutter framework. This library provides a set of widgets and tools for building user
/// interfaces following the Material Design guidelines. By importing this library, you gain access to
/// classes, functions, and widgets defined in the material package, allowing you to create visually
/// appealing and consistent UI components in your Flutter application.
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          CupertinoButton(
            child: const Text("Contoh button"),
            onPressed: () {
              // Aksi ketika button ditekan
            },
          ),
          const SizedBox(height: 20), // Memberi sedikit jarak
          const CupertinoActivityIndicator(), // Menampilkan loading indicator
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image')),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200/300', fit: BoxFit.contain,
        ),
      )
    );
  }
}
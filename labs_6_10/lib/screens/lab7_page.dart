import 'package:flutter/material.dart';

class Lab7Page extends StatelessWidget {
  const Lab7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 7')),
      body: const Center(
        child: Text('Контент лаби 7', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Lab9Page extends StatelessWidget {
  const Lab9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 9')),
      body: const Center(
        child: Text('Контент лаби 9', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

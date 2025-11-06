import 'package:flutter/material.dart';

class Lab6Page extends StatelessWidget {
  const Lab6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 6')),
      body: const Center(
        child: Text('Контент лаби 6', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Lab8Page extends StatelessWidget {
  const Lab8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 8')),
      body: const Center(
        child: Text('Контент лаби 8', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

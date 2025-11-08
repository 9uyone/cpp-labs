import 'package:flutter/material.dart';
import 'lab6_page.dart';
import 'lab7_page.dart';
import 'lab8_page.dart';
import 'lab9_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final labs = [
      {'title': 'Лаба 6: Text, Компонування класів', 'page': const Lab6Page()},
      {
        'title': 'Лаба 7: RichText, Stack, Positioned',
        'page': const Lab7Page(),
      },
      {
        'title': 'Лаба 8: StatelessWidget, MaterialApp',
        'page': const Lab8Page(),
      },
      {'title': 'Лаба 9: StatefulWidget', 'page': const Lab9Page()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Лабораторна 10')),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: labs.length,
        itemBuilder: (context, index) {
          final lab = labs[index];
          return ListTile(
            title: Text(lab['title'] as String),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => lab['page'] as Widget),
              );
            },
          );
        },
      ),
    );
  }
}

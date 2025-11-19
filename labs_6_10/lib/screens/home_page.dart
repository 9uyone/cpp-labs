import 'package:flutter/material.dart';
import 'lab6_page.dart';
import 'lab7_page.dart';
import 'lab8_page.dart';
import 'lab9_page.dart';
import 'image_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final labs = [
      {'subtitle': 'Text, Компонування класів', 'page': const Lab6Page()},
      {
        'subtitle': 'RichText, Stack, Positioned',
        'page': const Lab7Page(),
      },
      {'subtitle': 'StatelessWidget', 'page': const Lab8Page()},
      {'subtitle': ' StatefulWidget', 'page': const Lab9Page()},
      {'subtitle': ' Image', 'page': const ImagePage()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Лабораторна 10')),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: labs.length,
        itemBuilder: (context, index) {
          final lab = labs[index];

          return ListTile(
            title: Text('Лаба ${index + 6}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            subtitle: Text(lab['subtitle'] as String),
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

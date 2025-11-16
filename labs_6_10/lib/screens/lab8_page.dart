import 'package:flutter/material.dart';

class Lab8Block extends StatelessWidget {
  final Color backgroundColor;
  final double blockHeight;
  final String textContent;

  const Lab8Block({
    super.key,
    required this.backgroundColor,
    required this.blockHeight,
    required this.textContent,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Використовуємо Expanded, щоб блок зайняв доступний простір у Row
      child: Container(
        height: blockHeight,
        color: backgroundColor,
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textContent,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    );
  }
}

class Lab8Page extends StatelessWidget {
  const Lab8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 8')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
              child: Row(
                children: <Widget>[
                  Lab8Block(
                    backgroundColor: Colors.amber.shade200,
                    blockHeight: 120, // Висота 120px
                    textContent: '''Ще не вмерла України і слава, і воля,
Ще нам, браття молодії, усміхнеться доля.''',
                  ),
                  const SizedBox(width: 8),

                  Lab8Block(
                    backgroundColor: Colors.lightBlue.shade200,
                    blockHeight: 120, // Висота 120px
                    textContent: '''Згинуть наші воріженьки, як роса на сонці.
Запануєм і ми, браття, у своїй сторонці
''',
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 100.0,
              ), // Зменшив відступ для екрана
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // 3. Третій блок (використовуємо наш новий віджет)
                  Lab8Block(
                    backgroundColor: Colors.green.shade200,
                    blockHeight: 100, // Висота 100px
                    textContent: '''Душу, тіло ми положим за нашу свободу.
І покажем, що ми, браття, козацького роду!''',
                  ),
                  const SizedBox(width: 8), // Відступ від правого краю
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

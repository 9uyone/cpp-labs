import 'package:flutter/material.dart';

class Lab6Page extends StatelessWidget {
  const Lab6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 6')),
      body: SingleChildScrollView(
        // Додаємо SingleChildScrollView на випадок переповнення
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // --- Перший Рядок (Твій оригінальний код, виправлено spacing) ---
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 200, 8, 8),
              child: Row(
                // Властивості spacing у Row немає. Використовуємо SizedBox
                children: <Widget>[
                  ConstrainedBox(
                    constraints: const BoxConstraints.expand(
                      width: 100,
                      height: 120,
                    ),
                    child: Container(
                      color: Colors.amber,
                      child: const Text('''Ще не вмерла України і слава, і воля,
Ще нам, браття молодії, усміхнеться доля.''', style: TextStyle(fontSize: 12)),
                    ),
                  ),
                  const SizedBox(width: 8), // Проміжок між контейнерами
                  Expanded(
                    child: Container(
                      color: Colors.lightBlue,
                      child: const Text(
                        '''Згинуть наші воріженьки, як роса на сонці.
Запануєм і ми, браття, у своїй сторонці
''',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Row(
                // !!! Ключ до вирівнювання: MainAxisAlignment.end
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    // Додамо внутрішній відступ (Padding) для тексту в контейнері
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.green.shade100,
                    child: const Text('''Душу, тіло ми положим за нашу свободу.
І покажем, що ми, браття, козацького роду!''', style: TextStyle(fontSize: 12)),
                  ),
                  const SizedBox(
                    width: 8,
                  ), // Невеликий відступ від правого краю екрана
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

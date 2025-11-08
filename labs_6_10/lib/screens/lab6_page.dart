import 'package:flutter/material.dart';

class Lab6Page extends StatelessWidget {
  const Lab6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 6')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 200, 20, 20),
            child: Row(
              spacing: 20,
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
                //const SizedBox(width: 20),
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
            padding: const EdgeInsets.fromLTRB(400, 150, 0, 0),
            child: Container(
              height: 100,
              color: Colors.green.shade100,
              child: Text('''Душу, тіло ми положим за нашу свободу.
І покажем, що ми, браття, козацького роду!''', style: TextStyle(fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }
}

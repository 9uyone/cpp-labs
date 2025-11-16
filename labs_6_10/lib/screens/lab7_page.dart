import 'package:flutter/material.dart';

class Lab7Page extends StatelessWidget {
  const Lab7Page({super.key});

  @override
  Widget build(BuildContext context) {
    // Параметри з твого варіанту: a=24px, b=34px, c=64px
    const double a = 24.0;
    const double b = 34.0;
    const double c = 64.0;

    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 7')),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // ЖОВТИЙ ФОН: Займає весь простір Stack (найнижчий шар)
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            height: a + b + c,
            child: Container(color: Colors.yellow),
          ),

          // ЧЕРВОНИЙ КОНТЕЙНЕР
          Positioned(
            left: a,
            top: a,
            right: 0,
            height: b + c,
            child: Container(
              color: Colors.red,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 6),
              child: const Text(
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // СИНІЙ КОНТЕЙНЕР:
          Positioned(
            left: a + b, // Відступ 'a' від лівого краю
            top: a + b, // Відступ 'a' від верхнього краю
            height: c,
            right: 0,
            //child: Container(color: Colors.blue),
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Flutter',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // 4. ТЕКСТ 'Flutter': Позиціонується внизу праворуч, під синім контейнером
          // Його положення: внизу (c/2) та справа (a/2)
          /*Positioned(
            right: 8,
            bottom: 8,
            child: const Text(
              'Flutter',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),*/
        ],
      ),
    );
  }
}

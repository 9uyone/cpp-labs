import 'package:flutter/material.dart';

class Lab9Page extends StatefulWidget {
  const Lab9Page({super.key});

  @override
  State<Lab9Page> createState() => _Lab9PageState();
}

class _Lab9PageState extends State<Lab9Page> {
  Color _activeColor = Colors.teal;
  int _counter = 0;

  void _changeState() {
    setState(() {
      _counter++;
      if (_activeColor == Colors.teal) {
        _activeColor = Colors.deepOrange;
      } else if (_activeColor == Colors.deepOrange)
        _activeColor = Colors.blue;
      else
        _activeColor = Colors.teal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лаба 9')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
              child: Row(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: const BoxConstraints.expand(
                      width: 100,
                      height: 120,
                    ),
                    child: Container(
                      color: Colors.amber,
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Стан: $_counter',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  Expanded(
                    child: Container(
                      height: 120,
                      color: _activeColor,
                      alignment: Alignment.center,
                      child: const Text(
                        'Колір змінюється',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.red.shade200,
                    child: const Text(
                      'Натисни на кнопку',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeState,
        child: const Icon(Icons.autorenew),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// Модель даних для елементів списку
class TourDestination {
  final String title;
  final String subtitle;
  final IconData icon;

  TourDestination(this.title, this.subtitle, this.icon);
}

class TourAgency extends StatefulWidget {
  const TourAgency({super.key});

  @override
  State<TourAgency> createState() => _TourAgencyState();
}

class _TourAgencyState extends State<TourAgency> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<TourDestination> _destinations = [
    TourDestination('Париж', 'Романтичний тур, 7 днів', Icons.flight_takeoff),
    TourDestination('Токіо', 'Культурний шок, 10 днів', Icons.temple_buddhist),
    TourDestination(
      'Ріо-де-Жанейро',
      'Карнавал та пляжі, 5 днів',
      Icons.beach_access,
    ),
    TourDestination('Альпи', 'Гірськолижний відпочинок', Icons.downhill_skiing),
    TourDestination('Мальдіви', 'Екзотичний релакс', Icons.flight),
  ];

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _addDestination(String title) {
    if (title.isNotEmpty) {
      setState(() {
        _destinations.add(
          TourDestination(title, 'Новий напрямок', Icons.add_location_alt),
        );
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Туристична агенція'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Введіть новий напрямок',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: _addDestination,
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => _addDestination(_controller.text),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 18,
                    ),
                  ),
                  child: const Text('Додати'),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.separated(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: _destinations.length,
              separatorBuilder: (context, index) => const VerticalDivider(
                color: Colors.grey,
                thickness: 0.5,
                width: 30,
                indent: 10,
                endIndent: 10,
              ),
              itemBuilder: (context, index) {
                final dest = _destinations[index];

                return SizedBox(
                  width: 200,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Зображення-заглушка
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.grey.shade300,
                          alignment: Alignment.center,
                          child: Icon(
                            dest.icon,
                            size: 48,
                            color: Colors.blue.shade700,
                          ),
                        ),

                        // ListTile (з leading та trailing)
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            child: const Text('✈️'),
                          ),
                          title: Text(
                            dest.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(dest.subtitle),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          ),
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Вибрано: ${dest.title}'),
                                duration: Duration(milliseconds: 700),
                              ),
                            );
                          },
                        ),

                        // Додаткова текстова інформація
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Текстова інформація про тур. Деталі тут.',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),

                        // Горизонтальний розділювач всередині елемента
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.deepOrange,
                          indent: 16,
                          endIndent: 16,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Додатковий розділювач між списком та нижнім краєм (для демонстрації параметрів)
          const Divider(
            height: 40,
            thickness: 3,
            color: Colors.cyan,
            indent: 50,
            endIndent: 50,
          ),
        ],
      ),
    );
  }
}

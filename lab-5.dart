import 'dart:async';

class Conference<T extends Meeting> {
  final String title, place;
  final Map<String, T> _meetings = {};

  Conference(this.title, this.place);

  Future<void> addMeeting<U extends T>(U meet) async {
    await Future.delayed(Duration(milliseconds: 500));
    if (_meetings.containsKey(meet.topic)) {
      throw Exception('Засідання вже є на таку тему');
    }
    _meetings[meet.topic] = meet;
  }

  Map<String, T> getMeetings() => _meetings;

  int averageMemberCount() {
    if (_meetings.isEmpty) return 0;
    int sum = _meetings.values.fold(0, (a, b) => a + b.memberCount);
    return (sum / _meetings.length).round();
  }

  T? mostPopularMeeting() => _meetings.values.isEmpty
      ? null
      : _meetings.values.reduce(
          (a, b) => a.memberCount > b.memberCount ? a : b,
        );

  int titleLength() => title.length;
}

class Meeting<T> {
  T date;
  String topic;
  int memberCount;

  Meeting(this.date, this.topic, this.memberCount);
}

Future<void> main() async {
  var conf = Conference<Meeting<DateTime>>('conf 1', 'NLTU');

  try {
    await conf.addMeeting(Meeting<DateTime>(DateTime(2025, 9, 9), 'gs', 20));
    await conf.addMeeting(Meeting<DateTime>(DateTime(2025, 9, 10), 'fs', 36));
    await conf.addMeeting(Meeting<DateTime>(DateTime(2025, 10, 30), 'sdp', 30));
  } catch (e) {
    print('Помилка: $e');
  }

  print('Середня кількість учасників: ${conf.averageMemberCount()}');
  print('Найпопулярніше засідання: ${conf.mostPopularMeeting()?.topic}');
  print('Довжина назви конференції: ${conf.titleLength()}');

  var conf2 = Conference<Meeting<String>>('OnlineConf', 'Zoom');
  await conf2.addMeeting(Meeting<String>('2025-09-09', 'AI trends', 42));
  print('Перше онлайн-засідання: ${conf2.mostPopularMeeting()?.topic}');
}

class Conference {
  final String title, place;
  Map<String, Meeting> _meetings = Map();
  
  Conference(this.title, this.place);
  
  void addMeeting(Meeting meet) {
    if (_meetings.containsKey(meet.topic))
      throw Exception('Засідання вже є на таку тему');
    
    _meetings[meet.topic] = meet;
  }
  
  Map<String, Meeting> getMeetings() => _meetings;
  
  int averageMemberCount() {
    int sum = 0;
    _meetings.values.forEach((value) {
      sum += value.memberCount;
    });
    return (sum / _meetings.length).round();
  }
  
  Meeting? mostPopularMeeting() => _meetings.values.isEmpty ? null : 
    _meetings.values.reduce((a, b) =>
      a.memberCount > b.memberCount ? a : b
    );
  
  int titleLength() => title.length;
}

class Meeting {
  DateTime date;
  String topic;
  int memberCount;
  
  Meeting(this.date, this.topic, this.memberCount);
}

void main() { 
  var conf = Conference('conf 1', 'NLTU');
  conf.addMeeting(Meeting(DateTime(09, 09, 2025), 'gs', 20));
  conf.addMeeting(Meeting(DateTime(10, 09, 2025), 'fs', 36));
  conf.addMeeting(Meeting(DateTime(30, 10, 2025), 'sdp', 30));
  
  print(conf.averageMemberCount());
  print(conf.mostPopularMeeting()?.topic);
}

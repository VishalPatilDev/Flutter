class Player {
  final String name;
  final int jerNo;
  final int runs;
  final double avg;

  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> playerMap() {
    return {
      'playername': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg': avg,
    };
  }
}

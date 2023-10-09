class FloorModel {
  FloorModel(
      {required this.floorName,
      required this.isActive,
      this.host = '',
      this.totalTime,
      this.timeLeft});

  String floorName;
  String host;
  Duration? timeLeft;
  bool isActive;
  Duration? totalTime;
}

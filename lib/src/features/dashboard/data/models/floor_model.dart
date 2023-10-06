class FloorModel {
  FloorModel(
      {required this.floorName,
      required this.isActive,
      this.host = '',
      this.totalTime = 0,
      this.timeLeft = 0});

  String floorName;
  String host;
  int timeLeft;
  bool isActive;
  int totalTime;
}

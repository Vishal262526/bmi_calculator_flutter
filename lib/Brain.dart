class Brain {
  int _age = 18;
  double _height = 10;
  int _weight = 30;

  // For age
  void addAge() => _age++;
  void reduceAge() => _age--;
  int getAge() => _age;

  // For weight
  void addWeight() => _weight++;
  void reduceWeight() => _weight--;
  int getWeight() => _weight;

  double getHeight() => _height;
  double onHeightChange(double height) => _height = height;

  String calculatoeBMI() {
    return "";
  }

  void toggleGenderCard(int activeColor) {}
}

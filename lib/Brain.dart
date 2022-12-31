import 'dart:math';

class Brain {
  int _age = 18;
  double _height = 180;
  int _weight = 63;
  double? _bmi;

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

  String? calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);
     if(_bmi != null){
       print("BMI is ${_bmi!.toStringAsFixed(1)}");
       return _bmi!.toStringAsFixed(1);
     }
     else{
       return null;
     }
  }

  String getResult(){

      if(_bmi != null && _bmi! >= 25){
        return 'Overweight';
      }
      else if (_bmi != null && _bmi! > 18.5){
        return "Normal";
      }
      else{
        return 'Underweight';
      }
  }

  String getInterpretation(){
    if(_bmi != null && _bmi! >= 25){
      return 'You have a hight then normal body weight. Try to exercise more.';
    }
    else if (_bmi != null && _bmi! > 18.5){
      return "You have a normal body weight. Good Job!";
    }
    else{
      return 'You have a lower than normal body weight. You need eat bit more. ';
    }
  }



}

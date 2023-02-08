import 'package:flutter/foundation.dart';

class MpinProvider with ChangeNotifier{
  int _count = 0;
  int get getCount{
    return _count;
  }

  void incrementCounter(){
    if(_count <= 3)
    {
      _count = _count + 1;
    }
    notifyListeners();
  }

  void decrementCounter(){
    _count = _count - 1;
    notifyListeners();
  }
}

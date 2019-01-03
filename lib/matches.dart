
import 'package:flutter/widgets.dart';

class DateMatch extends ChangeNotifier{
  Decision decision = Decision.undecided;

  void like(){
    if(decision == Decision.undecided){
      decision  = Decision.nope;
      notifyListeners();
    }
  }

  void nope(){
    if(decision == Decision.undecided){
      decision  = Decision.like;
      notifyListeners();
    }
  }

  void superLike(){
    if(decision == Decision.undecided){
      decision  = Decision.superLike;
      notifyListeners();
    }
  }

  void reset(){
    if(decision != Decision.undecided){
      decision  = Decision.undecided;
      notifyListeners();
    }
  }
}


enum Decision {
  undecided,
  nope,
  like,
  superLike,
}
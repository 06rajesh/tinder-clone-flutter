
import 'package:flutter/widgets.dart';
import 'package:ui_tuts_cards/profiles.dart';

class MatchEngine extends ChangeNotifier{
  final List<DateMatch> _matches;
  int _currentMatchIndex;
  int _nextMatchIndex;

  MatchEngine({
    List<DateMatch> matches,
  }) : _matches = matches {
    _currentMatchIndex = 0;
    _nextMatchIndex =1;
  }

  DateMatch get currentMatch => _matches[_currentMatchIndex];
  DateMatch get nextMatch => _matches[_nextMatchIndex];

  void cycleMatch(){
    if(currentMatch.decision != Decision.undecided){
      currentMatch.reset();

      _currentMatchIndex = _nextMatchIndex;
      _nextMatchIndex = _nextMatchIndex < _matches.length - 1
                          ? _nextMatchIndex + 1 : 0;
      notifyListeners();
    }
  }

}


class DateMatch extends ChangeNotifier{
  final Profile profile;
  Decision decision = Decision.undecided;

  DateMatch({
    this.profile,
  });

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
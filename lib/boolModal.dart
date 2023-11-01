import 'package:flutter/cupertino.dart';

class bool_Modal extends ChangeNotifier
{
bool  abc=true;
void changeBool(ab){
abc=ab;
notifyListeners();
}

}
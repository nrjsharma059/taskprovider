

import 'package:flutter/cupertino.dart';

class UiProvider extends ChangeNotifier{

  var emailSwitch = 4.0;
  var emailBool = false;


  changeSwitchEmail(){
if(emailBool!=true){
  emailSwitch = 40.0;
  emailBool =true;
} else {
  emailSwitch =4.0;
  emailBool = false;
}

notifyListeners();
  }







}



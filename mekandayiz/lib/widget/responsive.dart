import 'package:flutter/material.dart';

enum Screen {mobile, tablet ,destop}

detectScreen(Size size ){
    if(size.width < 600) {
      return Screen.mobile;
    }
    else if(size.width < 840) {
      return Screen.tablet;
    }
    else {
      return Screen.destop;
    }
  }
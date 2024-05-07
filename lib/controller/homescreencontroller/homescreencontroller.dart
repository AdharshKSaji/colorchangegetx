
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreenController extends GetxController{
  
dynamic Value=Colors.white;

  colorChanger(){
    Value=Colors.red;
    print(Value);
    update();
  }
  colormaker(){
     Value=Colors.yellow;
    print(Value);
    update();

  }
  colorfill(){
     Value=Colors.green;
    print(Value);
    update();

  }

  


  
}
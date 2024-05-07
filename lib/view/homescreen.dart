import 'package:colorchangegetx/controller/homescreencontroller/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  HomeScreenController controller = Get.put(HomeScreenController());
  
  Color Value = Colors.white;
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (_) => 
      Scaffold(
      backgroundColor: controller.Value,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            InkWell(
              onTap: () {
                controller.colorChanger();
                
                
                
                
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                controller.colormaker();
               
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                controller.colorfill();
            
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
              ),
            ),
            
          
          ],
        ),
      ),
      
     ) );
  }
}
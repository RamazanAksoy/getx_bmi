import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/routes/routes.dart';

class HomeController extends GetxController {
  TextEditingController textEditingControllerHeight = TextEditingController();
  TextEditingController textEditingControllerWeight = TextEditingController();
  double? bmi;


  bmiCalculate() {
    bmi = double.parse(textEditingControllerWeight.text) /
        ((double.parse(textEditingControllerHeight.text) / 100) *
            (double.parse(textEditingControllerHeight.text) / 100));

            Get.toNamed(Routes.DETAILS,parameters: {"results":bmi.toString()});
  }
}

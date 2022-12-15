import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double uzunluk = MediaQuery.of(context).size.height;
    double genislik = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        SizedBox(
          height: uzunluk / 10 * 1,
        ),
        Container(
          width: genislik,
          margin: EdgeInsets.only(left: genislik / 10 * 0.5),
          child: const Text(
            "Let's calculate\nyour current BMI",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500, letterSpacing: 1),
          ),
        ),
        Container(
          width: genislik,
          margin: EdgeInsets.only(left: genislik / 10 * 0.5, top: uzunluk / 10 * 0.3),
          child: const Text(
            "You can find out whether you are\noverweight, underweight or ideal weight.",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.6),
          ),
        ),
        SizedBox(
          height: uzunluk / 10 * 0.5,
        ),
        SizedBox(
          height: uzunluk / 10 * 0.3,
        ),
        buildTextFieldAge(uzunluk, genislik),
        SizedBox(
          height: uzunluk / 10 * 0.1,
        ),
        buildTextFieldHeight(uzunluk, genislik),
        SizedBox(
          height: uzunluk / 10 * 0.1,
        ),
        buildTextFieldWeight(uzunluk, genislik),
        SizedBox(
          height: uzunluk / 10 * 2.5,
        ),
        buildGestureDetectorCalculateBmi(context, uzunluk, genislik),
      ]),
    );
  }

  GestureDetector buildGestureDetectorCalculateBmi(BuildContext context, double uzunluk, double genislik) {
    return GestureDetector(
      onTap: () {
        controller.bmiCalculate();
      },
      child: Container(
        alignment: Alignment.center,
        height: uzunluk / 10 * 0.7,
        width: genislik / 10 * 8,
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)), color: Colors.blue),
        child: const Text(
          "Calculate BMI",
          style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Container buildTextFieldWeight(double uzunluk, double genislik) {
    return Container(
      height: uzunluk / 10 * 0.7,
      width: genislik / 10 * 9,
      child: TextField(
        controller: controller.textEditingControllerWeight,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(hintText: "Weight", suffixText: "kg"),
      ),
    );
  }

  Container buildTextFieldHeight(double uzunluk, double genislik) {
    return Container(
      height: uzunluk / 10 * 0.7,
      width: genislik / 10 * 9,
      child: TextField(
        controller: controller.textEditingControllerHeight,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(hintText: "Height", suffixText: "cm"),
      ),
    );
  }

  Container buildTextFieldAge(double uzunluk, double genislik) {
    return Container(
      height: uzunluk / 10 * 0.7,
      width: genislik / 10 * 9,
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(hintText: "Age"),
      ),
    );
  }
}

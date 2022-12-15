import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_controller.dart';

class DetailsScreen extends GetWidget<DetailsContoller> {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double uzunluk = MediaQuery.of(context).size.height;
    double genislik = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: uzunluk / 10 * 1,
        ),
        Container(
          margin: EdgeInsets.only(left: genislik / 10 * 0.5),
          width: genislik / 10 * 9,
          height: uzunluk / 10 * 6,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(children: [
            SizedBox(
              height: uzunluk / 10 * 0.5,
            ),
            Container(
              height: uzunluk / 10 * 0.6,
              width: genislik,
              child: Text(
                "Your BMI is",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: uzunluk / 10 * 0.3,
            ),
            Container(
              height: uzunluk / 10 * 1.2,
              width: genislik / 10 * 7,
              child: RichText(
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                text: TextSpan(
                  text: controller.result.toString(),
                  style: TextStyle(color: Colors.green.withBlue(109), fontSize: 90, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: uzunluk / 10 * 0.4,
            ),
            Container(
              height: uzunluk / 10 * 1,
              width: genislik / 10 * 7,
              alignment: Alignment.center,
              child: Text(
                controller.explanation()!,
                style: const TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: uzunluk / 10 * 2,
              width: genislik / 10 * 7,
              alignment: Alignment.center,
              child: Text(
                controller.explanation2()!,
                style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 16),
              ),
            ),
          ]),
        ),
        SizedBox(
          height: uzunluk / 10 * 2,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: genislik / 10 * 0.5),
            alignment: Alignment.center,
            height: uzunluk / 10 * 0.7,
            width: genislik / 10 * 8,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)), color: Colors.blue),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.refresh_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: genislik / 10 * 0.2,
                ),
                const Text(
                  "Start over",
                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

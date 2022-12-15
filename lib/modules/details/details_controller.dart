import 'package:get/get.dart';

class DetailsContoller extends GetxController {
  double? result;
  @override
  void onInit() {
    result=double.parse(Get.parameters['results']!);
    super.onInit();
  }


  String? explanation() {
    if (result! < 18.5) {
      return "UNDERWEIGHT";
    } else if (result! < 25 && result! >= 18.5) {
      return "NORMAL";
    } else if (result! < 30 && result! >= 25) {
      return "OVERWEIGHT";
    } else if (result! < 35 && result! >= 30) {
      return "OBESE";
    } else if (result! >= 35) {
      return "EXTREMELY\nOBESE";
    } else {
      return "WRONG VALUES";
    }
  }

  String? explanation2() {
    if (result! < 18.5) {
      return "You are underweight, you may need to put on some weight. You are recommend to ask your doctor or a dietitian for advice.";
    } else if (result! < 25 && result! >= 18.5) {
      return "You are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems.";
    } else if (result! < 30 && result! >= 25) {
      return "You are slightly overweight. You may be advised to lose some weight for health reasons. You are recommended to talk to your doctor or a dietitian for advice.";
    } else if (result! < 35 && result! >= 30) {
      return "You are heavily overweight. Your health may be at risk if you do not lose weight. You are recommened to talk your doctor or a dietitian for advice.";
    } else if (result! >= 35) {
      return "Seek advice from a weight managment practitioner quickly.";
    } else {
      return "WRONG VALUES";
    }
  }
}

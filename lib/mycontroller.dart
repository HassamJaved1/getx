import 'package:get/get.dart';

class MyController extends GetxController {
  RxInt x = 1.obs;

  incrementValue() {
    x.value++;
  }
}

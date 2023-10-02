import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mycontroller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MyController _controller = Get.put(MyController());

  double value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.withOpacity(value)),
            ),
            Slider(
                value: value,
                onChanged: (values) {
                  setState(() {
                    value = values;
                  });
                })
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login_signup1/src/constants/image_strings.dart';

class FormHeaderWidget extends StatefulWidget {
   const FormHeaderWidget({super.key});

  @override
  State<FormHeaderWidget> createState() => _FormHeaderWidgetState();
}

class _FormHeaderWidgetState extends State<FormHeaderWidget> {
   int activeIndex = 0;
  final List<String> _images = [
    fristImage,
    secondImage,
    thirdImage,
    forthImage,
  ];

   @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        activeIndex++;
        if (activeIndex == 4) activeIndex = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
                height: 350,
                child: Stack(
                  children: _images.asMap().entries.map((e) {
                    return Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedOpacity(
                          opacity: activeIndex == e.key ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          child: Image.asset(
                            e.value,
                            height: 400,
                          ),
                        ));
                  }).toList(),
                ),
              );
  }
}
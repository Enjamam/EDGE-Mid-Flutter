import 'dart:async';
import 'package:crazy_animation/pages/crazy_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoAnimation extends StatefulWidget {
  const LogoAnimation({super.key});

  @override
  State<LogoAnimation> createState() => _LogoAnimationState();
}

class _LogoAnimationState extends State<LogoAnimation> {
  late Timer timer;
  bool shouldAnimate = false;
  bool shouldShowText = false;

  Future<void> initAnimate() async {
    timer = Timer(const Duration(seconds: 1), () {
      setState(() {
        shouldAnimate = true;
        shouldShowText = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initAnimate();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 777),
              curve: Curves.decelerate,
              width: shouldAnimate ? size.width * .55 : size.width * .41,
              height: shouldAnimate ? size.width * .55 : size.width * .41,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 555),
              curve: Curves.decelerate,
              width: shouldAnimate ? size.width * .48 : size.width * .41,
              height: shouldAnimate ? size.width * .48 : size.width * .41,
              decoration: BoxDecoration(
                color: const Color(0xff4b4b4b),
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
            Container(
              width: size.width * .41,
              height: size.width * .41,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const CrazyAnimation());
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 555),
                curve: Curves.decelerate,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.decelerate,
                  opacity: shouldAnimate ? 1 : 0,
                  child: const Text(
                    "GO",
                    style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
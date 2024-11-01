import 'package:crazy_animation/widgets/logo_animated.dart';
import 'package:crazy_animation/widgets/top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrazyAnimation extends StatelessWidget {
  const CrazyAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool menuClicked = false.obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    menuClicked.value = !menuClicked.value;
                  },
                  child: Icon(Icons.menu),
                ),
                SizedBox(height: size.width * .075),
                SizedBox(
                  width: size.width,
                  height: size.width * 1.1,
                  child: Obx(
                        () => Stack(
                      children: [
                        TopCard(
                          menuClicked: menuClicked,
                          defaultWidth: size.width * .44,
                          dynamicWidth: size.width,
                          defaultHeight: size.width * 1.1,
                          dynamicHeight: size.width * 1.1,
                          colors: Colors.black,
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 555),
                          curve: Curves.easeOut,
                          right: 0,
                          top: menuClicked.value ? 65 : 0,
                          child: Padding(
                            padding: EdgeInsets.all(menuClicked.value ? 17 : 0),
                            child: TopCard(
                              menuClicked: menuClicked,
                              defaultWidth: size.width * .44,
                              dynamicWidth: size.width - 42 - 34,
                              defaultHeight: size.width * .65,
                              dynamicHeight: size.width * 1.1 - 65 - 34,
                              colors: const Color(0xff575757),
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          bottom: menuClicked.value
                              ? size.width * 1.1 - size.width * 0.12 - 17
                              : 0,
                          right: menuClicked.value ? 17 : 0,
                          child: TopCard(
                            menuClicked: menuClicked,
                            defaultWidth: size.width * .44,
                            dynamicWidth: size.width * 0.12,
                            defaultHeight: size.width * .44,
                            dynamicHeight: size.width * 0.12,
                            colors: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
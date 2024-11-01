import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopCard extends StatelessWidget {
  final RxBool menuClicked;
  final double defaultWidth, dynamicWidth, defaultHeight, dynamicHeight;
  final Color colors;

  const TopCard({
    super.key,
    required this.menuClicked,
    required this.defaultWidth,
    required this.dynamicWidth,
    required this.defaultHeight,
    required this.dynamicHeight,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 355),
      curve: Curves.easeOut,
      width: menuClicked.value ? dynamicWidth : defaultWidth,
      height: menuClicked.value ? dynamicHeight : defaultHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(menuClicked.value ? 55 : 100),
        color: colors,
      ),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 355),
        opacity: menuClicked.value ? 0 : 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
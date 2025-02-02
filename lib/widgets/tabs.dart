import 'package:donut_ui/utils/palette.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String iconPath;
  const TabWidget({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          iconPath,
          color: Palette.grey,
        ),
      )
    );
  }
}

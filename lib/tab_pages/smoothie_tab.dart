import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  const SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Smoothie Tab',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  const PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Pizza Tab',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
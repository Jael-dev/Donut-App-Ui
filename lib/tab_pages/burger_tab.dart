import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  const BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Burger Tab',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
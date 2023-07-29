import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 46, 7, 100),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'hello app',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

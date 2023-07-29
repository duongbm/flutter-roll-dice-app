import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
  });

  GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                textStyle: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              child: const Text('Roll  Dice'),
            )
          ],
        ),
      ),
    );
  }
}

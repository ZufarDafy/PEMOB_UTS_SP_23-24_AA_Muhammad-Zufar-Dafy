import 'package:flutter/material.dart';

class Intropage1 extends StatelessWidget {
  const Intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF8E8),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/introduction/1.png')),
            Text(
              """Kenali Lingkungan mu
Ketahui Keadaan Sekitar mu""",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

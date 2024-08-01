import 'package:flutter/material.dart';

class Intropage3 extends StatelessWidget {
  const Intropage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF8E8),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/introduction/3.png')),
            Text(
              """Ubah gaya hidupmu
menjadi lebih sehat""",
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

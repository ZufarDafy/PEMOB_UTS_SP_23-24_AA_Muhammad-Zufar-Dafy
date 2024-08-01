import 'package:flutter/material.dart';

class Intropage2 extends StatelessWidget {
  const Intropage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF8E8),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/introduction/2.png')),
            Text(
              """Dapatkan monitoring dokter
Tanpa harus keluar rumah""",
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

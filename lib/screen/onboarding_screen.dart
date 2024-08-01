import 'package:drmibo/home.dart';
import 'package:drmibo/screen/intro_screen/intropage1.dart';
import 'package:drmibo/screen/intro_screen/intropage2.dart';
import 'package:drmibo/screen/intro_screen/intropage3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [Intropage1(), Intropage2(), Intropage3()],
        ),
        Container(
            alignment: Alignment(0, 0.75),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MyHomePage();
                          }));
                        },
                        child: Container(
                          height: 50,
                          width: 250,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(25),
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xffEC8A49),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Text(
                            "Mulai Perjalananmu",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 250),
                              curve: Curves.easeInOut);
                        },
                        child: Container(
                          height: 50,
                          width: 250,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(25),
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xffEC8A49),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Text(
                            "Lanjutkan",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                SmoothPageIndicator(controller: _controller, count: 3),
              ],
            ))
      ],
    ));
  }
}

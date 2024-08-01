import 'package:drmibo/beranda.dart';
import 'package:drmibo/kesehatan.dart';
import 'package:drmibo/laporan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;
  // final List<Widget> screens = [Beranda(), Laporan(), Kesehatan()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Beranda();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDEDEE0),
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          color: Color(0xffFFFFFF),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Beranda();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.house,
                          color: currentTab == 0
                              ? Color(0xffEC8A49)
                              : Color(0x88EC8A49),
                        ),
                        Text(
                          "Beranda",
                          style: TextStyle(
                            color: currentTab == 0
                                ? Color(0xffEC8A49)
                                : Color(0x88EC8A49),
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Laporan();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.note_alt,
                          color: currentTab == 1
                              ? Color(0xffEC8A49)
                              : Color(0x88EC8A49),
                        ),
                        Text(
                          "Laporan",
                          style: TextStyle(
                            color: currentTab == 1
                                ? Color(0xffEC8A49)
                                : Color(0x88EC8A49),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

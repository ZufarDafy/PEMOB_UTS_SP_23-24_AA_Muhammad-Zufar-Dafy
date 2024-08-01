import 'package:drmibo/screen/dalemberanda/bmi.dart';
import 'package:drmibo/screen/dalemberanda/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  String nama = "Zufar";
  DateTime _dateTime = DateTime.now();
  bool isVisible = false;

  void _showDatePicker() {
    showDatePicker(
            context: context,
            firstDate: DateTime(2000),
            lastDate: DateTime(2025),
            initialDate: DateTime.now())
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEC8A49),
        centerTitle: true,
        toolbarHeight: 80,
        title: Column(
          children: [
            // Text(
            //   "Halo " + nama,
            //   style: TextStyle(
            //       fontFamily: "Montserrat",
            //       color: Colors.white,
            //       fontWeight: FontWeight.w500),
            // ),
            Text(
              DateFormat("yMMMEd").format(_dateTime).toString(),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: GestureDetector(
              child: Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                _showDatePicker();
              },
            ),
          )
        ],
        leading: Container(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            child: Icon(Icons.person, color: Colors.white, size: 35),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Profile();
              }));
            },
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: 390,
            height: 150,
            color: Color(0xffDDF1F5),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 90),
                  width: screenWidth,
                  height: 60,
                  color: Color(0xff8DC39F),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 110),
                    child: Image(
                        image: AssetImage("assets/images/introduction/1.png"))),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Image(
                    image: AssetImage("assets/images/beranda/hehe.png"),
                    width: screenWidth * 0.92,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 390,
            height: screenHeight - 150,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text("Health Diary",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700)),
                  margin: EdgeInsets.only(left: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Bmi();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    width: 700,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 4,
                            blurRadius: 2,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.scale_rounded),
                        const Text("BMI",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700)),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 190),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  width: 700,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 2,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.photo),
                      const Text("Foto",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(left: 180),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  width: 700,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 2,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.monitor_heart_sharp),
                      const Text("Denyut Nadi",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(left: 95),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  width: 700,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 2,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                      const Text("Tekanan Darah",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(left: 70),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  width: 700,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 2,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.medication),
                      const Text("Obat",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                      GestureDetector(
                        onTap: () {
                          _showTimePicker();
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 180),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ),
                Visibility(
                    visible: isVisible,
                    child: Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      width: 700,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 4,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ]),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.medication),
                          const Text("Obat",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700)),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(left: 180),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black)),
                              child: Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

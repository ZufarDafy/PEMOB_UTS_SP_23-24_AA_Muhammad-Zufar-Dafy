import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int currentindex = 0;
  String result = "";
  double height = 0;
  double weight = 0;

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",
            style: TextStyle(
                fontFamily: "Montserrat", fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                radioButton("Man", Colors.blue, 0),
                radioButton("Woman", Colors.pink, 1)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your Height in Cm :",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: heightController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "Your height in Cm",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your wight in Kg :",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: weightController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "Your weight in Kg",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    height = double.parse(heightController.value.text);
                    weight = double.parse(weightController.value.text);
                  });
                  calculateBmi(height, weight);
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "Your BMI is :",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "$result",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      )),
    );
  }

  void calculateBmi(double height, double weight) {
    double finalresult = weight / (height * height / 10000);
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      height: 80,
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                  currentindex == index ? color : Colors.grey[200]),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
                color: currentindex == index ? Colors.white : color,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          )),
    ));
  }
}

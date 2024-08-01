import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Laporan extends StatefulWidget {
  const Laporan({super.key});

  @override
  State<Laporan> createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  String? laporan = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: DropdownButton(
                hint: Text(laporan.toString()),
                items: [
                  DropdownMenuItem(
                    child: Text("Hari ini"),
                    value: "Hari ini",
                  ),
                  DropdownMenuItem(
                    child: Text("Kemarin"),
                    value: "Kemarin",
                  )
                ],
                onChanged: (newValue) {
                  setState(() {
                    laporan = newValue;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Laporan " + laporan.toString(),
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
          )),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore est veritatis soluta exercitationem distinctio at ut quaerat magni quam, ducimus accusantium quod, itaque ex ipsa voluptatem quasi. Eligendi consequatur eveniet sapiente dolore quibusdam non harum voluptatem consequuntur perferendis esse nihil nulla impedit asperiores dolores vitae, eos modi? Delectus, pariatur distinctio?",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

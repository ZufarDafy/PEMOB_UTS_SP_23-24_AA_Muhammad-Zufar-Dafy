import 'package:drmibo/beranda.dart';
import 'package:drmibo/home.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String currentUser = "Tamu";
  bool? isChecked = false;

  Future editField(String field) async {
    String newValue = "";
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Edit Username",
          style: const TextStyle(color: Colors.white),
        ),
        content: TextField(
          autofocus: true,
          decoration: InputDecoration(
              hintText: "Enter new Username",
              hintStyle: TextStyle(color: Colors.grey)),
          onChanged: (value) {
            newValue = value;
          },
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
              )),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop(newValue);
              },
              child: Text(
                'Save',
              ))
        ],
      ),
    );

    if (newValue.trim().length > 0) {
      setState(() {
        currentUser = newValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffEC8A49),
          title: Text(
            "Profile",
            style: TextStyle(
                fontFamily: "Montserrat",
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.person,
            size: 80,
          ),
          Text(
            currentUser,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.only(left: 15, bottom: 15),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    IconButton(
                        onPressed: () {
                          editField('Username');
                        },
                        icon: Icon(
                          Icons.settings,
                          color: Colors.grey[400],
                        ))
                  ],
                ),
                Text(currentUser)
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 160,
              ),
              Text("Terms & Agreement"),
              Checkbox(
                  value: isChecked,
                  onChanged: (value) => setState(() {
                        isChecked = value;
                      }))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Berhasil disimpan!")));
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyHomePage();
                  },
                ));
              },
              child: Text("Simpan"))
        ],
      ),
    );
  }
}

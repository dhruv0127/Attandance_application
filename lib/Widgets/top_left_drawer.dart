import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopLeftThreeLines extends StatelessWidget {
  const TopLeftThreeLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://rngpit.ac.in/Uploads/photograph/DJR.jpg";
    return Drawer(
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
        child: ListView(children: [
          Scrollbar(
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(70, 0, 0, 0),
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 1, //extend the shadow
                  )
                ],
              ),
              width: 280.0,
              height: 207.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 8, 0),
                    width: 100.0,
                    height: 150.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                        ),
                        color: Colors.black),
                    child: const Align(
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 8, 0),
                    child: Text(
                      "D. J. Rana",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 24, 90),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 8, 0),
                    child: Text(
                      "djrana.rngpit.ac.in",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 24, 90),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Scrollbar(
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(70, 0, 0, 0),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color.fromARGB(31, 0, 0, 0),
                    width: 1,
                  )),
              child: Column(
                children: const [
                  ListTile(
                    // onTap: ,
                    leading: Icon(
                      Icons.history_rounded,
                      color: Color.fromARGB(255, 0, 24, 90),
                    ),
                    title: Text(
                      "History",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 24, 90),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.profile_circled,
                      color: Color.fromARGB(255, 0, 24, 90),
                    ),
                    title: Text(
                      "Other Profile",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 24, 90),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    // onTap: ,
                    leading: Icon(
                      CupertinoIcons.mail,
                      color: Color.fromARGB(255, 0, 24, 90),
                    ),
                    title: Text(
                      "Email me",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 24, 90),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    // onTap: ,
                    leading: Icon(
                      CupertinoIcons.settings,
                      color: Color.fromARGB(255, 0, 24, 90),
                    ),
                    title: Text(
                      "Settings",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 24, 90),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    // onTap: ,
                    leading: Icon(
                      CupertinoIcons.question_square,
                      color: Color.fromARGB(255, 0, 24, 90),
                    ),
                    title: Text(
                      "About Us",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 24, 90),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

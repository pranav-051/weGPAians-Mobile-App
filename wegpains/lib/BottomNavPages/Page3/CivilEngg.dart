import 'package:flutter/material.dart';

import 'CivilEnggSemestersList/CivilSem1.dart';
import 'CivilEnggSemestersList/CivilSem2.dart';
import 'CivilEnggSemestersList/CivilSem3.dart';
import 'CivilEnggSemestersList/CivilSem4.dart';
import 'CivilEnggSemestersList/CivilSem5.dart';
import 'CivilEnggSemestersList/CivilSem6.dart';


class CivilEngg extends StatefulWidget {
  const CivilEngg({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CivilEngg> createState() => CivilEngg1();
}

class CivilEngg1 extends State<CivilEngg> {
  bool semester = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors.white), //drawer menu button code for changing color
          //    backgroundColor: const Color(0xfff79c4f),
          centerTitle: true,

          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('Civil Engineering          ',style: TextStyle(color: Colors.white, fontSize: 23,fontWeight: FontWeight.w500)),],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.multiple_stop,
                  color: Colors.orangeAccent,
                ),
                Text(
                  "  Select your current semester",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Divider(
              height: 10,
              thickness: 1.5,
            ),
            const SizedBox(height: 10),

            //Card 1 for first year
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 20,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  width: 350,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('First Year',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            )),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        RadioListTile(
                            title: const Text(
                              "I Semester",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            value: "FirstSem",
                            groupValue: semester,
                            onChanged: (value) {
                              setState(() {
                                semester = true;
                              });

                              if (semester) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return const CivilSem1(title: "Semester1");
                                    }));
                              }
                            }),
                        RadioListTile(
                            title: const Text("II Semester",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400)),
                            value: "SecondSem",
                            groupValue: semester,
                            onChanged: (value) {
                              setState(() {
                                semester = true;
                              });

                              if (semester) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return const CivilSem2(title: "Semester2");
                                    }));
                              }
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Card 2 for second year
            const SizedBox(
              height: 5,
            ),
            // const Divider(height: 10, thickness: 2,),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 20,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  width: 350,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Second Year',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            )),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        RadioListTile(
                            title: const Text("III Semester",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400)),
                            value: "ThirdSem",
                            groupValue: semester,
                            onChanged: (value) {
                              setState(() {
                                semester = true;
                              });

                              if (semester) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return const CivilSem3(title: "Semester3");
                                    }));
                              }
                            }),
                        RadioListTile(
                            title: const Text("IV Semester",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400)),
                            value: "ForthSem",
                            groupValue: semester,
                            onChanged: (value) {
                              setState(() {
                                semester = true;
                              });

                              if (semester) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return  const CivilSem4(title: "Semester4");
                                    }));
                              }
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //card 3 for third year
            const SizedBox(
              height: 5,
            ),
            //  const Divider(height: 10, thickness: 2,),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 20,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  width: 350,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Third Year',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            )),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        RadioListTile(
                            title: const Text("V Semester",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400)),
                            value: "FifthSem",
                            groupValue: semester,
                            onChanged: (value) {
                              setState(() {
                                semester = true;
                              });

                              if (semester) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return const CivilSem5(title: "Semester5");
                                    }));
                              }
                            }),
                        RadioListTile(
                            title: const Text("VI Semester",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400)),
                            value: "SixthSem",
                            groupValue: semester,
                            onChanged: (value) {
                              setState(() {
                                semester = true;
                              });

                              if (semester) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return const CivilSem6(title: "Semester6");
                                    }));
                              }
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 10,
              thickness: 1,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 8,
            ),

            const SizedBox(
              height: 100,
            )
          ],
        )
    );
  }
}

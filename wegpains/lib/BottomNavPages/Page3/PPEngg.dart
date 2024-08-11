import 'package:flutter/material.dart';
import 'package:untitled/BottomNavPages/Page3/PPEnggSemestersList/PPSem1.dart';
import 'package:untitled/BottomNavPages/Page3/PPEnggSemestersList/PPSem2.dart';
import 'package:untitled/BottomNavPages/Page3/PPEnggSemestersList/PPSem3.dart';
import 'package:untitled/BottomNavPages/Page3/PPEnggSemestersList/PPSem4.dart';
import 'package:untitled/BottomNavPages/Page3/PPEnggSemestersList/PPSem5.dart';
import 'package:untitled/BottomNavPages/Page3/PPEnggSemestersList/PPSem6.dart';

class PPEng extends StatefulWidget {
  const PPEng({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<PPEng> createState() => PPEng1();
}

class PPEng1 extends State<PPEng> {
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
              Text('Plastic & Polymer Engg',style: TextStyle(color: Colors.white, fontSize: 23,fontWeight: FontWeight.w500)),],
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
                                      return const PPESem1(title: "Semester1");
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
                                      return const PPESem2(title: "Semester2");
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
                                      return const PPESem3(title: "Semester3");
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
                                      return const PPESem4(title: "Semester4");
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
                                      return const PPESem5(title: "Semester5");
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
                                      return const PPESem6(title: "Semester6");
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

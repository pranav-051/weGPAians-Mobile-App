import 'package:flutter/material.dart';

import 'CSESem2SubList/CSESem2Sub1.dart';
import 'CSESem3SubList/CSESem3Sub2.dart';
import 'CSESem3SubList/CSESem3Sub3.dart';
import 'CSESem3SubList/CSESem3Sub4.dart';
import 'CSESem3SubList/CSESem3Sub5.dart';
import 'CSESem4SubList/CSESem4Sub6.dart';


class Semester4 extends StatefulWidget {
  const Semester4({key, required this.title});
  final String title;
  @override
  State<Semester4> createState() => _Semester4();
}

class _Semester4 extends State<Semester4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('IV Semester          ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Icon(
                  Icons.multiple_stop,
                  color: Colors.orangeAccent,
                ),
                Text(
                  "  Choose Subject",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Divider(
              height: 10,
              thickness: 1.5,
              color: Colors.black12,
            ),
            const SizedBox(height: 10),

            ///Subject 1 //////////////////////////////////////////////
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: Colors.white,
                  elevation: 4,
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size.fromHeight(50),
                  side: const BorderSide(color: Colors.orangeAccent, width: 1)),
              child: const Text(
                "[FC3412]  Computer Peripheral And Hardware Maintenance",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem2Sub1(title: 'SideNavPage2')),
                )
              },
            ),
            const SizedBox(
              height: 12,
            ),

            ///Subject 2 //////////////////////////////////////////////
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: Colors.white,
                elevation: 4,
                alignment: Alignment.centerLeft,
                minimumSize: const Size.fromHeight(50),
                side: const BorderSide(color: Colors.orangeAccent, width: 1),
              ),
              child: const Text("[CM3404]  Data Communication And Computer Network",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem3Sub2(title: 'SideNavPage2')),
                );},
            ),
            const SizedBox(
              height: 12,
            ),


            ///Subject 3 //////////////////////////////////////////////
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: Colors.white,
                elevation: 4,
                alignment: Alignment.centerLeft,
                minimumSize: const Size.fromHeight(50),
                side: const BorderSide(color: Colors.orangeAccent, width: 1),
              ),
              child: const Text(
                "[CC1410]  Environmental Studies",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem3Sub3(title: 'SideNavPage2')),
                );},
            ),
            const SizedBox(
              height: 12,
            ),

            ///Subject 4 //////////////////////////////////////////////
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: Colors.white,
                elevation: 4,
                alignment: Alignment.centerLeft,
                minimumSize: const Size.fromHeight(50),
                side: const BorderSide(color: Colors.orangeAccent, width: 1),
              ),
              child: const Text(
                "[FC3408]  Java Programming",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem3Sub4(title: 'SideNavPage2')),
                );},
            ),
            const SizedBox(
              height: 12,
            ),

            ///Subject 5 //////////////////////////////////////////////
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: Colors.white,
                elevation: 4,
                alignment: Alignment.centerLeft,
                minimumSize: const Size.fromHeight(50),
                side: const BorderSide(color: Colors.orangeAccent, width: 1),
              ),
              child: const Text(
                "[CM3409]  Microprocessor",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem3Sub5(title: 'SideNavPage2')),
                );},
            ),
            const SizedBox(
              height: 12,
            ),

            ///Subject 4 //////////////////////////////////////////////
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: Colors.white,
                elevation: 4,
                alignment: Alignment.centerLeft,
                minimumSize: const Size.fromHeight(50),
                side: const BorderSide(color: Colors.orangeAccent, width: 1),
              ),
              child: const Text(
                "[FC4452]  Software Project Management",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem4Sub6(title: 'SideNavPage2')),
                );},
            ),
            const SizedBox(
              height: 8,
            ),

            const Divider(height: 50, color: Colors.grey,),
            const SizedBox(
              height: 100,
            )
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/BottomNavPages/Page3/ComputerEnggSemestersList/CSESem1SubList/CSESem1Sub1.dart';
import 'package:untitled/BottomNavPages/Page3/ComputerEnggSemestersList/CSESem2SubList/CSESem2Sub1.dart';
import 'package:untitled/BottomNavPages/Page3/ComputerEnggSemestersList/CSESem2SubList/CSESem2Sub2.dart';
import 'package:untitled/BottomNavPages/Page3/ComputerEnggSemestersList/CSESem2SubList/CSESem2Sub3.dart';
import 'package:untitled/BottomNavPages/Page3/ComputerEnggSemestersList/CSESem2SubList/CSESem2Sub4.dart';
import 'package:untitled/BottomNavPages/Page3/ComputerEnggSemestersList/CSESem2SubList/CSESem2Sub5.dart';
import 'package:untitled/BottomNavPages/Page3/ComputerEnggSemestersList/CSESem2SubList/CSESem2Sub6.dart';

class Semester2 extends StatefulWidget {
  const Semester2 ({key, required this.title});
  final String title;
  @override
  State<Semester2> createState() => _Semester2();
}

class _Semester2 extends State<Semester2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('II Semester          ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
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
                "[FC1408]  Applied Mathematics",
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
              child: const Text("[CC1409]  Business Communication ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem2Sub2(title: 'SideNavPage2')),
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
                "[CC1411]  Development Of Life Skills",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem2Sub3(title: 'SideNavPage2')),
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
                "[FC2404]  Electrical Technology",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem2Sub4(title: 'SideNavPage2')),
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
                "[FC3402]  Fundamentals Of Electronics",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem2Sub5(title: 'SideNavPage2')),
                );},
            ),
            const SizedBox(
              height: 12,
            ),

            ///Subject 6 //////////////////////////////////////////////
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
                "[FC3411]  Web Page Development With Html",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                //Navigator.push(
                 // context,
                 // MaterialPageRoute(builder: (context) =>  const CSESem2Sub6(title: 'SideNavPage2')),
                //);
                },
            ),
            const SizedBox(
              height: 8,
            ),

            ///Subject 7
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
                "[FC3401]  Programming In C",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
               // Navigator.push(
                 // context,
                 // MaterialPageRoute(builder: (context) =>  const CSESem2Sub5(title: 'SideNavPage2')),
                //);
                },
            ),
            const SizedBox(
              height: 12,
            ),

            //Subject 8

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
                "[CC4411]  Yoga",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CSESem2Sub5(title: 'SideNavPage2')),
                );},
            ),
            const SizedBox(
              height: 12,
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

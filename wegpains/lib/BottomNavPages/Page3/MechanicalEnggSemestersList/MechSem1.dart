import 'package:flutter/material.dart';
import 'MechSem1SubList/MechSem1Sub1.dart';
import 'MechSem1SubList/MechSem1Sub2.dart';
import 'MechSem1SubList/MechSem1Sub3.dart';
import 'MechSem1SubList/MechSem1Sub4.dart';
import 'MechSem1SubList/MechSem1Sub5.dart';
import 'MechSem1SubList/MechSem1Sub6.dart';

class MechSem1 extends StatefulWidget {
  const MechSem1({key, required this.title});
  final String title;
  @override
  State<MechSem1> createState() => _MechSem1();
}

class _MechSem1 extends State<MechSem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('Semester1          ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
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
                "[CM5465]  Sub1",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const MechSem1Sub1(title: 'SideNavPage2')),
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
                child: const Text("[CM5460]  Sub2",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const MechSem1Sub2(title: 'SideNavPage2')),
                  );
                }
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
                "[CM5474]  Sub3",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const MechSem1Sub3(title: 'SideNavPage2')),
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
                "[CM5461]  Sub4",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const MechSem1Sub4(title: 'SideNavPage2')),
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
                "[FC5490]  Sub5",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const MechSem1Sub5(title: 'SideNavPage2')),
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
                "[CM5468  Sub6",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const MechSem1Sub6(title: 'SideNavPage2')),
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

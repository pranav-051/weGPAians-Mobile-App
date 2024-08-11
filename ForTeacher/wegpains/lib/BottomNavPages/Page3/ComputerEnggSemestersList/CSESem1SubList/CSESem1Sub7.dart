import 'package:flutter/material.dart';
import 'CSESem1Sub1/CSESem1Sub1MP.dart';
import 'CSESem1Sub1/CSESem1Sub1SPrac.dart';
import 'CSESem1Sub1/CSESem1Sub1websites.dart';
import 'CSESem1Sub7/CSESem1Sub7Curr.dart';
import 'CSESem1Sub7/CSESem1Sub7MP.dart';
import 'CSESem1Sub7/CSESem1Sub7QTPaper.dart';
import 'CSESem1Sub7/CSESem1Sub7QTPaperFormat.dart';
import 'CSESem1Sub7/CSESem1Sub7SPrac.dart';
import 'CSESem1Sub7/CSESem1Sub7Utube.dart';
import 'CSESem1Sub7/CSESem1Sub7ebooks.dart';

class CSESem1Sub7 extends StatefulWidget {
  const CSESem1Sub7 ({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CSESem1Sub7> createState() => _CSESem1Sub7();
}

class _CSESem1Sub7 extends State<CSESem1Sub7> {
  bool semester = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors.white), //drawer menu button code for changing color
          //    backgroundColor: const Color(0xfff79c4f),
          centerTitle: true,

          title:  const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('Computer Workshop Practices',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w500)),
            ],
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
              children:  <Widget>[
              ],
            ),


            Center(
                child: Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child: InkWell(
                        onLongPress: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const CSESem1Sub7Curr()),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image6.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child:  const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 75,
                                      ),
                                      Text("Curriculum",
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ]))))))),
            ////////////////////////////////////////////////////////////////////
            //
            // Center(
            //     child: Card(
            //         margin: const EdgeInsets.all(10),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(15.0),
            //         ),
            //         clipBehavior: Clip.antiAliasWithSaveLayer,
            //         elevation: 20,
            //         shadowColor: Colors.black,
            //         child: InkWell(
            //             onLongPress: () => {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) =>  const CSESem1Sub7ebooks()),
            //               )
            //             },
            //             child: Container(
            //                 decoration: const BoxDecoration(
            //                   image: DecorationImage(
            //                     image: AssetImage("images/image7.png"),
            //                     fit: BoxFit.cover,
            //                     alignment: Alignment.topCenter,
            //                   ),
            //                 ),
            //                 child:  const SizedBox(
            //                     width: 350,
            //                     height: 200,
            //                     child: Padding(
            //                         padding: EdgeInsets.all(10.0),
            //                         child: Column(children: [
            //                           SizedBox(
            //                             height: 65,
            //                           ),
            //                           Text("E-books",
            //                               style: TextStyle(
            //                                 fontSize: 25,
            //                                 color: Colors.white,
            //                                 fontWeight: FontWeight.w500,
            //                               )),
            //                           Text("Subject wise",
            //                               style: TextStyle(
            //                                 fontSize: 20,
            //                                 color: Colors.white,
            //                                 fontWeight: FontWeight.w300,
            //                               )),
            //                         ]))))))),
            ////////////////////////////////////////////////////////////////////
            ////////////////////////////////////////////////////////////////////

            Center(
                child: Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child: InkWell(
                        onLongPress: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const CSESem1Sub1websites(title: 'web',)),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image8.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 70,
                                        ),
                                        Text("Websites                ",
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        Text("for reference              ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                            )),
                                      ],
                                    ))))))),
            ////////////////////////////////////////////////////////////////////

            Center(
                child: Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child: InkWell(
                        onLongPress: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const CSESem1Sub7Utube(title: 'web',)),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image9.jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Text("Youtube Channels",
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        Text("for reference              ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                            )),
                                      ],
                                    ))))))),
            // ////////////////////////////////////////////////////////////////////
            // Center(
            //     child: Card(
            //         margin: const EdgeInsets.all(10),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(15.0),
            //         ),
            //         clipBehavior: Clip.antiAliasWithSaveLayer,
            //         elevation: 20,
            //         shadowColor: Colors.black,
            //         child: InkWell(
            //             onLongPress: () => {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) =>  const CSESem1Sub7QTPaper()),
            //               )
            //             },
            //             child: Container(
            //                 decoration: const BoxDecoration(
            //                   image: DecorationImage(
            //                     image: AssetImage("images/image10.png"),
            //                     fit: BoxFit.cover,
            //                     alignment: Alignment.topCenter,
            //                   ),
            //                 ),
            //                 child:  const SizedBox(
            //                     width: 350,
            //                     height: 200,
            //                     child: Padding(
            //                         padding: EdgeInsets.all(10.0),
            //                         child: Column(children: [
            //                           SizedBox(
            //                             height: 15,
            //                           ),
            //                           Text("Sample Question Paper ",
            //                               style: TextStyle(
            //                                 fontSize: 25,
            //                                 color: Colors.white,
            //                                 fontWeight: FontWeight.w500,
            //                               )),
            //                           Text("of end semester examination",
            //                               style: TextStyle(
            //                                 fontSize: 20,
            //                                 color: Colors.white,
            //                                 fontWeight: FontWeight.w300,
            //                               )),
            //                         ]))))))),
            // ////////////////////////////////////////////////////////////////////
            //
            // Center(
            //     child: Card(
            //         margin: const EdgeInsets.all(10),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(15.0),
            //         ),
            //         clipBehavior: Clip.antiAliasWithSaveLayer,
            //         elevation: 20,
            //         shadowColor: Colors.black,
            //         child: InkWell(
            //             onLongPress: () => {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) =>  const CSESem1Sub7QTPaperFormat()),
            //               )
            //             },
            //             child: Container(
            //                 decoration: const BoxDecoration(
            //                   image: DecorationImage(
            //                     image: AssetImage("images/image11.png"),
            //                     fit: BoxFit.cover,
            //                     alignment: Alignment.topCenter,
            //                   ),
            //                 ),
            //                 child:  const SizedBox(
            //                     width: 350,
            //                     height: 200,
            //                     child: Padding(
            //                         padding: EdgeInsets.all(10.0),
            //                         child: Column(children: [
            //                           SizedBox(
            //                             height: 60,
            //                           ),
            //                           Text("Question Paper Format",
            //                               style: TextStyle(
            //                                 fontSize: 25,
            //                                 color: Colors.white,
            //                                 fontWeight: FontWeight.w500,
            //                               )),
            //                           Text("of end term examination",
            //                               style: TextStyle(
            //                                 fontSize: 20,
            //                                 color: Colors.white,
            //                                 fontWeight: FontWeight.w300,
            //                               )),
            //                         ]))))))),
            // ////////////////////////////////////////////////////////////////////

            Center(
                child: Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child: InkWell(
                        onLongPress: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const CSESem1Sub1SPrac()),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image12.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child:  const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 70,
                                      ),
                                      Text("Sample Practicals",
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Text("for reference",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          )),
                                    ]))))))),
            ////////////////////////////////////////////////////////////////////

            Center(
                child: Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child: InkWell(
                        onLongPress: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const CSESem1Sub1MP()),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image13.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child:  const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 70,
                                      ),
                                      Text("Micro-project Format",
                                          style: TextStyle(
                                            fontSize: 26,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ))
                                    ]))))))),

            const SizedBox(height: 20,),
            const Divider(thickness: 0.5, color: Colors.grey,),
            const SizedBox(
              height: 100,
            )
          ],
        )
    );
  }
}

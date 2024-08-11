import 'package:flutter/material.dart';

import 'ITSem1Sub1/ITSem1Sub1Curr.dart';
import 'ITSem1Sub1/ITSem1Sub1Ebooks.dart';
import 'ITSem1Sub1/ITSem1Sub1MP.dart';
import 'ITSem1Sub1/ITSem1Sub1QTPformat.dart';
import 'ITSem1Sub1/ITSem1Sub1SPrac.dart';
import 'ITSem1Sub1/ITSem1Sub1SQTPapers.dart';

class ITSem1Sub1 extends StatefulWidget {
  const ITSem1Sub1 ({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ITSem1Sub1> createState() => _ITSem1Sub1();
}

class _ITSem1Sub1 extends State<ITSem1Sub1> {
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
              Text('Cloud Computing        ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
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
                            MaterialPageRoute(builder: (context) =>  const ITSem1Sub1Curr()),
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
                            child: const SizedBox(
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
                            MaterialPageRoute(builder: (context) =>  const ITSem1Sub1Ebooks()),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image7.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 65,
                                      ),
                                      Text("E-books",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Text("Subject wise",
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
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 70,),
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
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40,),
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
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                            MaterialPageRoute(builder: (context) =>  const ITSem1Sub1SQTPapers()),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image10.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text("Sample Question Paper ",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Text("of end semester examination",
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
                            MaterialPageRoute(builder: (context) =>  const ITSem1Sub1QPTformat()),
                          )
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image11.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: const SizedBox(
                                width: 350,
                                height: 200,
                                child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Text("Question Paper Format",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Text("of end term examination",
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
                            MaterialPageRoute(builder: (context) =>  const ITSem1Sub1SPrac()),
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
                            child: const SizedBox(
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
                            MaterialPageRoute(builder: (context) =>  const ITSem1Sub1MP()),
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
                            child: const SizedBox(
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




// // import 'package:flutter/material.dart';
// //
// // class ITSem1Sub1 extends StatefulWidget {
// //   const ITSem1Sub1({key, required this.title});
// //   final String title;
// //   @override
// //   State<ITSem1Sub1> createState() => _ITSem1Sub1();
// // }
//
// class _ITSem1Sub1 extends State<ITSem1Sub1> {
//   bool semester = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         appBar: AppBar(
//           iconTheme: const IconThemeData(
//               color: Colors.white), //drawer menu button code for changing color
//           //    backgroundColor: const Color(0xfff79c4f),
//           centerTitle: true,
//
//           title: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               Text('Cloud Computing        ',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 23,
//                       fontWeight: FontWeight.w500)),
//             ],
//           ),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(10),
//           children: <Widget>[
//             const SizedBox(
//               height: 12,
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children:  <Widget>[
//               ],
//             ),
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image5.png"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 70,),
//                           Text("Curriculum",
//                               style: TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             ////////////////////////////////////////////////////////////////////
//
//
//             ////////////////////////////////////////////////////////////////////
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image7.png"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 60,),
//                           Text("E-Books",
//                               style: TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400,
//                               )),
//                           Text("subject wise",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w300,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             ////////////////////////////////////////////////////////////////////
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image8.png"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 70,),
//                           Text("Websites                ",
//                               style: TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400,
//                               )),
//                           Text("for reference              ",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w300,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             ////////////////////////////////////////////////////////////////////
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image9.jpg"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 40,),
//                           Text("Youtube Channels",
//                               style: TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400,
//                               )),
//                           Text("for reference              ",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w300,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             ////////////////////////////////////////////////////////////////////
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image10.png"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 15,),
//                           Text("Sample Question Papers",
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400,
//                               )),
//                           Text("of end semester examination",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w300,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             ////////////////////////////////////////////////////////////////////
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image11.png"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 60,),
//
//                           Text("Question Paper Format",
//                               style: TextStyle(
//                                 fontSize: 22,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                           Text("of end term examination",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w200,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             ////////////////////////////////////////////////////////////////////
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image12.png"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 70,),
//                           Text("Sample Practicals",
//                               style: TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                           Text("for reference",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w300,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             ////////////////////////////////////////////////////////////////////
//
//             Center(
//               child: Card(
//                 margin: const EdgeInsets.all(10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("images/image13.png"),
//                       fit: BoxFit.cover,
//                       alignment: Alignment.topCenter,
//                     ),
//                   ),
//
//                   child: const SizedBox(
//                     width: 350,
//                     height: 200,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 70,),
//                           Text("Micro-project Format",
//                               style: TextStyle(
//                                 fontSize: 26,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             // SizedBox(height: 5,),
//             //
//             // Center(
//             //   child: Card(
//             //     margin: const EdgeInsets.all(10),
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     clipBehavior: Clip.antiAliasWithSaveLayer,
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     child: Container(
//             //       decoration: const BoxDecoration(
//             //         image: DecorationImage(
//             //           image: AssetImage("images/image5.png"),
//             //           fit: BoxFit.cover,
//             //           alignment: Alignment.topCenter,
//             //         ),
//             //       ),
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("Study material",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Text("provided by subject teacher",
//             //                 style: TextStyle(
//             //                   fontSize: 16,
//             //                   color: Colors.orange,
//             //                   fontWeight: FontWeight.w300,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             //
//             //  SizedBox(height: 5),
//             //
//             // Center(
//             //   child: Card(
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     color: Colors.white,
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("E-Book",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Text("subject wise ",
//             //                 style: TextStyle(
//             //                   fontSize: 16,
//             //                   color: Colors.orange,
//             //                   fontWeight: FontWeight.w300,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             //
//             // const SizedBox(height: 5),
//             //
//             // Center(
//             //   child: Card(
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     color: Colors.white,
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("Websites",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Text("for reference",
//             //                 style: TextStyle(
//             //                   fontSize: 16,
//             //                   color: Colors.orange,
//             //                   fontWeight: FontWeight.w300,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             //
//             // const SizedBox(height: 5),
//             //
//             // Center(
//             //   child: Card(
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     color: Colors.white,
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("Youtube Channels ",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Text("for reference",
//             //                 style: TextStyle(
//             //                   fontSize: 16,
//             //                   color: Colors.orange,
//             //                   fontWeight: FontWeight.w300,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             //
//             // const SizedBox(height: 5),
//             //
//             // Center(
//             //   child: Card(
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     color: Colors.white,
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("Sample Question Papers",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Text("of End Semester Examination",
//             //                 style: TextStyle(
//             //                   fontSize: 16,
//             //                   color: Colors.orange,
//             //                   fontWeight: FontWeight.w300,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             //
//             // const SizedBox(height: 5),
//             //
//             // Center(
//             //   child: Card(
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     color: Colors.white,
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("Question Paper Format",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Text("of End Semester Examination",
//             //                 style: TextStyle(
//             //                   fontSize: 16,
//             //                   color: Colors.orange,
//             //                   fontWeight: FontWeight.w300,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             //
//             // const SizedBox(height: 5),
//             //
//             // Center(
//             //   child: Card(
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     color: Colors.white,
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("Sample Practicals",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Text("for reference",
//             //                 style: TextStyle(
//             //                   fontSize: 16,
//             //                   color: Colors.orange,
//             //                   fontWeight: FontWeight.w300,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             //
//             // const SizedBox(height: 5),
//             //
//             // Center(
//             //   child: Card(
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.circular(15.0),
//             //     ),
//             //     elevation: 20,
//             //     shadowColor: Colors.black,
//             //     color: Colors.white,
//             //     child: SizedBox(
//             //       width: 350,
//             //       height: 200,
//             //       child: Padding(
//             //         padding: const EdgeInsets.all(10.0),
//             //         child: Column(
//             //           mainAxisAlignment: MainAxisAlignment.start,
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: const [
//             //             Text("Micro-project Format",
//             //                 style: TextStyle(
//             //                   fontSize: 22,
//             //                   color: Colors.black,
//             //                   fontWeight: FontWeight.w400,
//             //                 )),
//             //             Divider(
//             //               thickness: 1,
//             //               color: Colors.grey,
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//
//             const SizedBox(height: 20,),
//             const Divider(thickness: 0.5, color: Colors.grey,),
//             const SizedBox(
//               height: 100,
//             )
//           ],
//         )
//     );
//   }
// }

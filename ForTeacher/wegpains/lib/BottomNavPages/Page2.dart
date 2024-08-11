import 'package:flutter/material.dart';
import 'package:untitled/NavDrawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Page2> createState() => _Page2();
}

class _Page2 extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white10,
        drawer: const NavDrawer(),
        appBar:AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Classroom         ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
          ),
        ),
        ////////////////////////////////end of app bar
        body: ListView(
            children: <Widget>[
              const SizedBox(height: 30,),
              const Text(
                "               Welcome to Classroom",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const SizedBox(height: 7,),
              const Text(
                """       Revolutionize your learning with digital tools""",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              const SizedBox(height: 25,),
              Image.asset("images/classhub.gif", width: 380, height: 200,),
              const SizedBox(height: 25,),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,0,30,0),
                        child: Column(children:  [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              backgroundColor: Colors.white,
                              elevation: 10,
                             // alignment: Alignment.centerLeft,
                              minimumSize: const Size.fromHeight(45),
                              side: const BorderSide(color: Colors.orange, width: 1),
                            ),
                            child: const Text(
                              "Create Class",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16
                              ),
                            ),
                            onPressed: () async {
                              final url = Uri.parse(
                                'https://classroom.google.com/u/0/h',
                              );
                              if (await canLaunchUrl(url)) {
                                launchUrl(url);
                              } else {
                                // ignore: avoid_print
                                print("Can't launch $url");
                              }
                            },
                          ),
                          const SizedBox(height: 15,),
                        ////////////////////////////////or divider code
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Row(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Expanded(
                                child: Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Divider(thickness: 1, color: Colors.orange,)
                                ),
                              ),

                              Text('or'),

                              Expanded(
                                child: Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Divider(thickness: 1, color: Colors.orange)
                                ),),

                              SizedBox( width: 10),
                            ],),),
                          const SizedBox(height: 15,),
                          ////////////////////////////////  //////////////////////////////////
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              backgroundColor: Colors.white,
                              elevation: 10,
                             // alignment: Alignment.centerLeft,
                              minimumSize: const Size.fromHeight(45),
                              side: const BorderSide(color: Colors.orange, width: 1),
                            ),
                            child: const Text(
                              "Join Class",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,),
                            ),
                            onPressed: () async {
                              final url = Uri.parse(
                                'https://classroom.google.com/u/0/h',
                              );
                              if (await canLaunchUrl(url)) {
                                launchUrl(url);
                              } else {
                                // ignore: avoid_print
                                print("Can't launch $url");
                              }
                            },
                          ),

                          // //++++++++++++++++++++++++++++++++++++++++++++++++++++++for open a link
                          // ElevatedButton(
                          //   onPressed: () async {
                          //     final url = Uri.parse(
                          //       'https://nearpod.com/student/',
                          //     );
                          //     if (await canLaunchUrl(url)) {
                          //       launchUrl(url);
                          //     } else {
                          //       // ignore: avoid_print
                          //       print("Can't launch $url");
                          //     }
                          //   },
                          //   child: const Text('Web Link'),
                          // ),
                          // //++++++++++++++++++++++++++++++++++++++++++++++++++++++
                        ]),
                      ),
                      const SizedBox(height: 30,),
                      const Divider(thickness: 1,),
                      const SizedBox(height: 10,),
                      const Text("Steps for creating or joining the class:                                                                 ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black ),),
                      const SizedBox(height:3,),
                      const Text("Step 1: First click on 'Create Class or join class'.                                                       ",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blueGrey )),
                      const SizedBox(height:3,),
                      const Text("Step 2: Click on 'Sign in to Classroom'.                                                                 ",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blueGrey )),
                      const SizedBox(height:3,),
                      const Text("Step 3: Enter your email/phone number and click on 'Next' .                                                     ",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blueGrey )),
                      const SizedBox(height:3,),
                      const Text("Step 4: Now, enter your email password and click on 'Next'.                                                             ",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blueGrey )),
                      const SizedBox(height:3,),
                      const Text("Step 5: Your account created successfully!                                                             ",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blueGrey )),


                      const SizedBox(height: 100,)
                    ],
                  ),
                ),
              )
            ],
          )
        );
  }
  }



import 'package:flutter/material.dart';
import 'package:untitled/BottomNavPages/Page1/SearchBarPage.dart';
import 'package:untitled/BottomNavPages/Page1/Chat.dart';
import '/NavDrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';


class Page1 extends StatefulWidget {
  const Page1({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Page1> createState() => _Page1();
}

class _Page1 extends State<Page1> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Cannot launch URL";
    }
  }
  ////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white), //drawer menu button code for changing color
        //    backgroundColor: const Color(0xfff79c4f),
        centerTitle: true,

        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('weGPAins',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500)),
          ],),
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              /////////////////////////////////////////slider
              CarouselSlider(
                items: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage("images/Slider/1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage("images/Slider/2.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage("images/Slider/4.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage("images/Slider/5.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 600),
                  viewportFraction: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
//////////////////////////////////////////////////////////////////////////////////////////////
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "    Virtual learning tools",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              /////////////////////////////////////////////////////////////////horizontal scrolling window
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    //Container 1 for CS and IT
                    Container(
                      width: 180,
                      color: Colors.orange[100],
                      child: Column(children: <Widget>[
                        //Row1
                        SizedBox(height: 10,),
                        const Text(
                          "Computer and IT Engg  ",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              // for C
                              icon: Image.asset(
                                'images/Home_t_logos/clang.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 40,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.programiz.com/c-programming/online-compiler/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 0,),
                            IconButton(
                              // for C++
                              icon: Image.asset(
                                'images/Home_t_logos/cpplang.png',
                                width: 50,
                                height: 50,
                              ),
                              iconSize: 32,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.programiz.com/cpp-programming/online-compiler/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 10,),
                            IconButton(
                              // for java
                              icon: Image.asset(
                                'images/Home_t_logos/javalang.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 50,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.scaler.com/topics/java/online-java-compiler/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),

                        //const SizedBox(height: 10,),
                        //Row 2

                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              // for php
                              icon: Image.asset(
                                'images/Home_t_logos/phplang.png',
                                width: 500,
                                height: 500,
                              ),
                              iconSize: 40,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.programiz.com/php/online-compiler/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //   const SizedBox(width: 10,),
                            IconButton(
                              // for python
                              icon: Image.asset(
                                'images/Home_t_logos/python.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 20,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.online-python.com/online_python_compiler',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //  const SizedBox(width: 10,),
                            IconButton(
                              // for html
                              icon: Image.asset(
                                'images/Home_t_logos/htmllang.png',
                                width: 50,
                                height: 50,
                              ),
                              iconSize: 25,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.tutorialspoint.com/online_html_editor.php',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ]),
                    ),
                    //-----------------------------------------------
                    //Container 2 Electronics
                    Container(
                      width: 180,
                      color: Colors.orange[100],
                      child: Column(children: <Widget>[
                        //Row1
                        SizedBox(height: 10,),
                        const Text(
                          "                      Electronic Engg                               ",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              // for scilab
                              icon: Image.asset(
                                'images/Home_t_logos/scilab.png',
                                width: 50,
                               // height: 45,
                              ),
                              iconSize: 55,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://old.cloud.scilab.in/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 0,),
                            IconButton(
                              // for Circuit lab
                              icon: Image.asset(
                                'images/Home_t_logos/circuitlab.png',
                                width: 50,
                               // height: 30,
                              ),
                              iconSize: 25,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.circuitlab.com/editor/#?id=7pq5wm&from=homepage',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 25,),
                            IconButton(
                              icon: Image.asset(
                                'images/Home_t_logos/image80.png',
                                width: 50,
                                //height: 30,
                              ),
                              iconSize: 30,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://circuitmaker.com/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 0,),
                            // IconButton(
                            //   // for C++
                            //   icon: Image.asset(
                            //     'images/Home_t_logos/cpplang.png',
                            //     width: 50,
                            //     height: 50,
                            //   ),
                            //   iconSize: 32,
                            //   onPressed: () {
                            //     _launchURL("www.cpp.sh");
                            //   },
                            // ),
                            // //const SizedBox(width: 10,),
                            // IconButton(
                            //   // for java
                            //   icon: Image.asset(
                            //     'images/Home_t_logos/javalang.png',
                            //     width: 150,
                            //     height: 50,
                            //   ),
                            //   iconSize: 50,
                            //   onPressed: () {
                            //     _launchURL("www.online-java.com");
                            //   },
                            // ),
                          ],
                        ),

                      ]),
                    ),
                    //----------------------------------------------------------------
                    //Container 2 Civil
                    Container(
                      width: 180,
                      color: Colors.orange[100],
                      child: Column(children: <Widget>[
                        //Row1
                        SizedBox(height: 10,),
                        const Text(
                          "Civil Engg",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              // for C
                              icon: Image.asset(
                                'images/Home_t_logos/Autocad.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 65,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://web.autocad.com/login',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 0,),
                            // IconButton(
                            //   // for C++
                            //   icon: Image.asset(
                            //     'images/Home_t_logos/cpplang.png',
                            //     width: 50,
                            //     height: 50,
                            //   ),
                            //   iconSize: 32,
                            //   onPressed: () {
                            //     _launchURL("www.cpp.sh");
                            //   },
                            // ),
                            // //const SizedBox(width: 10,),
                            // IconButton(
                            //   // for java
                            //   icon: Image.asset(
                            //     'images/Home_t_logos/javalang.png',
                            //     width: 150,
                            //     height: 50,
                            //   ),
                            //   iconSize: 50,
                            //   onPressed: () {
                            //     _launchURL("www.online-java.com");
                            //   },
                            // ),
                          ],
                        ),

                        //const SizedBox(height: 10,),
                        //Row 2
                        // Row(
                        //   children: <Widget>[
                        //     const SizedBox(
                        //       width: 10,
                        //     ),
                        //     IconButton(
                        //       // for php
                        //       icon: Image.asset(
                        //         'images/Home_t_logos/phplang.png',
                        //         width: 500,
                        //         height: 500,
                        //       ),
                        //       iconSize: 40,
                        //       onPressed: () {
                        //         _launchURL("www.3v4l.org");
                        //       },
                        //     ),
                        //     //   const SizedBox(width: 10,),
                        //     IconButton(
                        //       // for python
                        //       icon: Image.asset(
                        //         'images/Home_t_logos/python.png',
                        //         width: 150,
                        //         height: 50,
                        //       ),
                        //       iconSize: 20,
                        //       onPressed: () {
                        //         _launchURL("www.online-python.com");
                        //       },
                        //     ),
                        //     //  const SizedBox(width: 10,),
                        //     IconButton(
                        //       // for html
                        //       icon: Image.asset(
                        //         'images/Home_t_logos/htmllang.png',
                        //         width: 50,
                        //         height: 50,
                        //       ),
                        //       iconSize: 25,
                        //       onPressed: () {
                        //         _launchURL("www.jsfiddle.net");
                        //       },
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(
                          height: 8,
                        ),

                      ]),
                    ),
                  ],
                ),
              ),
              //****************************************************************
              const SizedBox(height: 25),
              /////////////////////////////////////////////////////////////////2nd horizontal scrolling window
              /////////////////////////////////////////////////////////////////
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "    Downloading Links",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
              SizedBox(height: 6,),
                ],
              ),

              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    //Container 1 for CS and IT
                    Container(
                      width: 180,
                      color: Colors.deepOrange[100],
                      child: Column(children: <Widget>[
                        //Row1
                        SizedBox(height: 10,),
                        const Text(
                          "Computer and IT Engg  ",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        Row(children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            // for C
                            icon: Image.asset(
                              'images/Home_t_logos/Tasm.png',
                              width: 150,
                              height: 50,
                            ),
                            iconSize: 40,
                            onPressed: () async {
                              final url = Uri.parse(
                                'https://www.circuitlab.com/editor/#?id=7pq5wm&from=homepage',
                              );
                              if (await canLaunchUrl(url)) {
                                launchUrl(url);
                              } else {
                                // ignore: avoid_print
                                print("Can't launch $url");
                              }
                            },
                          ),
                          //const SizedBox(width: 0,),
                          IconButton(
                            // for C++
                            icon: Image.asset(
                              'images/Home_t_logos/virtualbox.png',
                              width: 50,
                              height: 50,
                            ),
                            iconSize: 48,
                            onPressed: () async {
                              final url = Uri.parse(
                                'https://www.virtualbox.org/wiki/Downloads',
                              );
                              if (await canLaunchUrl(url)) {
                                launchUrl(url);
                              } else {
                                // ignore: avoid_print
                                print("Can't launch $url");
                              }
                            },
                          ),
                          //const SizedBox(width: 10,),
                          IconButton(
                              // for java
                              icon: Image.asset(
                                'images/Home_t_logos/xampp.png',
                                width: 80,
                                height: 50,
                              ),
                              iconSize: 27,
                            onPressed: () async {
                              final url = Uri.parse(
                                'https://www.apachefriends.org/download.html',
                              );
                              if (await canLaunchUrl(url)) {
                                launchUrl(url);
                              } else {
                                // ignore: avoid_print
                                print("Can't launch $url");
                              }
                            },
                              )
                        ]),

                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              // for php
                              icon: Image.asset(
                                'images/Home_t_logos/visualstudio.png',
                                width: 500,
                                height: 500,
                              ),
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://code.visualstudio.com/download',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                              iconSize: 35,
                            ),
                              const SizedBox(width: 5,),
                            IconButton(
                              // for python
                              icon: Image.asset(
                                'images/Home_t_logos/androidstudio.png',
                                width: 150,
                                height: 60,
                              ),
                              iconSize: 40,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://developer.android.com/studio',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                             const SizedBox(width: 5,),
                            IconButton(
                              // for html
                              icon: Image.asset(
                                'images/Home_t_logos/netbeans.png',
                                width: 80,
                                height: 50,
                              ),
                              iconSize: 25,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://netbeans.apache.org/download/index.html',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ]),
                    ),
                    //-----------------------------------------------
                    //Container 2 Electronics
                    Container(
                      width: 210,
                      color: Colors.deepOrange[100],
                      child: Column(children: <Widget>[
                        //Row1
                        SizedBox(height: 10,),
                        const Text(
                          "                         Electronic Engg                               ",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              // for C
                              icon: Image.asset(
                                'images/Home_t_logos/scilab.png',
                                width: 150,
                                //height: 55,
                              ),
                              iconSize: 60,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://scilab.en.softonic.com/?ex=DINS-635.3',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 0,),
                            IconButton(
                              // for C++
                              icon: Image.asset(
                                'images/Home_t_logos/circuitlab.png',
                                width: 50,
                                height: 50,
                              ),
                              iconSize: 35,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://pcmacstore.com/en/app/466239613/circuit-lab',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            IconButton(
                              // for java
                              icon: Image.asset(
                                'images/Home_t_logos/codeblock.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 50,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.codeblocks.org/downloads/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),

                        //const SizedBox(height: 10,),
                        //Row 2
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              // for php
                              icon: Image.asset(
                                'images/Home_t_logos/virtuallab.png',
                              ),
                              iconSize: 45,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://filehippo.com/download_virtual-lab/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            IconButton(
                              // for php
                              icon: Image.asset(
                                'images/Home_t_logos/ExpressPCB.png',
                              ),
                              iconSize: 45,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.expresspcb.com/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            IconButton(
                              // for php
                              icon: Image.asset(
                                'images/Home_t_logos/arduino.png',
                                // width: 500,
                                // height: 500,
                              ),
                              iconSize: 45,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://support.arduino.cc/hc/en-us/articles/360019833020-Download-and-install-Arduino-IDE',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),
                      ]),
                    ),
                    //----------------------------------------------------------------
                    //Container 2 Mechanical
                    Container(
                      width: 180,
                      color: Colors.deepOrange[100],
                      child: Column(children: <Widget>[
                        //Row1

                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Mechanical Engg ",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: Image.asset(
                                'images/Home_t_logos/Autodesk.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 35,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.autodesk.in/support/download-install',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 0,),
                            IconButton(
                              // for C++
                              icon: Image.asset(
                                'images/Home_t_logos/Catia.png',
                                width: 50,
                                height: 50,
                              ),
                              iconSize: 35,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://edu.3ds.com/en/software/catia-v5-student-edition',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 10,),
                            IconButton(
                              // for java
                              icon: Image.asset(
                                'images/Home_t_logos/Creo.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 35,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.ptc.com/en/support/download-software',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),
                      ]),
                    ),
                    //----------------------------------------------------------------
                    //Container 2 ENTC
                    Container(
                      width: 200,
                      color: Colors.deepOrange[100],
                      child: Column(children: <Widget>[
                        //Row1
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Civil Engg ",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              // for C
                              icon: Image.asset(
                                'images/Home_t_logos/Stadd.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 55,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.bentley.com/software/staad/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 0,),
                            IconButton(
                              // for C++
                              icon: Image.asset(
                                'images/Home_t_logos/Takla.png',
                                width: 50,
                                height: 50,
                              ),
                              iconSize: 40,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://download.tekla.com/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //const SizedBox(width: 10,),
                            IconButton(
                              // for java
                              icon: Image.asset(
                                'images/Home_t_logos/revit.png',
                                width: 150,
                                height: 50,
                              ),
                              iconSize: 30,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.autodesk.in/products/revit/free-trial',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                          ],
                        ),

                        //const SizedBox(height: 10,),
                        //Row 2
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 22,
                            ),
                            IconButton(
                              // for php
                              icon: Image.asset(
                                'images/Home_t_logos/watergerms.png',
                                width: 500,
                                height: 500,
                              ),
                              iconSize: 30,
                              onPressed: () async {
                                final url = Uri.parse(
                                  'https://www.bentley.com/software/openflows-watergems/',
                                );
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                } else {
                                  // ignore: avoid_print
                                  print("Can't launch $url");
                                }
                              },
                            ),
                            //   const SizedBox(width: 10,),
                          ],
                        ),
                      ]),
                    ),
                    //----------------------------------------------------------------
                  ],
                ),
              ),
              //****************************************************************
              ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

              const SizedBox(
                height: 30,
              ),

              const Text(
                "Important Links                                              ",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                      color: Colors.amber, width: 1), // Background color
                ),
                onPressed: () async {
                  final url = Uri.parse(
                    'https://mahadbt.maharashtra.gov.in/Login/Login',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },

                icon: const Image(
                  image: AssetImage("images/mahadbt.png"),
                  height: 40,
                  width: 70,
                ), //icon data for elevated button
                label: const Text(
                  "MahaDBT (Scholarship) Portal",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.black),
                ), //label text
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                      color: Colors.amber, width: 1), // Background color
                ),
                onPressed: () {
                  _launchURL("www.gpamravati.ac.in");
                },

                icon: const Image(
                  image: AssetImage("images/GPALogo.jpeg"),
                  height: 40,
                  width: 40,
                  fit: BoxFit.fitHeight,
                ), //icon data for elevated button
                label: const Text(
                  """Government Polytechnic, Amravati
  (official Site)                     """,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.black),
                ), //label text
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                      color: Colors.amber, width: 1), // Background color
                ),
                onPressed: () async {
                  final url = Uri.parse(
                    'https://exam.gpamravati.ac.in/login.php',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                icon: const Image(
                  image: AssetImage("images/image97.png"),
                  height: 35,
                  width: 40,
                ), //icon data for elevated button
                label: const Text(
                  "GPA Online Exam Portal                 ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.black),
                ), //label text
              ),


              const SizedBox(
                height: 20,
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                      color: Colors.amber, width: 1), // Background color
                ),
                onPressed: () async {
                  final url = Uri.parse(
                    'https://www.gpamravati.ac.in/result  ',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                icon: const Image(
                  image: AssetImage("images/image96.png"),
                  height: 35,
                  width: 40,
                ), //icon data for elevated button
                label: const Text(
                       "GPA Result Portal                            ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.black),
                ), //label text
              ),

              const SizedBox(
                height: 10,
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
                          // onTap: () async {
                          //   final url = Uri.parse(
                          //     'https://ocw.mit.edu/search/',
                          //   );
                          //   if (await canLaunchUrl(url)) {
                          //     launchUrl(url);
                          //   } else {
                          //     // ignore: avoid_print
                          //     print("Can't launch $url");
                          //   }
                          // },
                          onTap: () {
                            _launchURL("ocw.mit.edu");
                          },
                          child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/96.png"),
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
                                      ]))))))),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        splashColor: Colors.orange,
        elevation: 10,
        tooltip: 'Chat Bot',
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ChatPage()));
        },
        child: const Icon(
          Icons.chat,
          color: Colors.black87,
        ),
      ),
    );
  }
}
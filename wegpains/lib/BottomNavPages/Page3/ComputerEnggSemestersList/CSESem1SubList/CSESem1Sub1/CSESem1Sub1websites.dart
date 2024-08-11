import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CSESem1Sub1websites extends StatefulWidget {
  const CSESem1Sub1websites({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CSESem1Sub1websites> createState() => _CSESem1Sub1websites();
}

class _CSESem1Sub1websites extends State<CSESem1Sub1websites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Websites          ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.multiple_stop,
                  color: Colors.orangeAccent,
                ),
                Text(
                  "  Websites for reference only",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
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

            //button1
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.w3schools.com',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image18.png"),
                height: 25,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "W3Schools                                                                  ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button 2
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://github.com',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image19.png"),
                height: 40,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "GitHub                                                            ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button 3
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://stackoverflow.com',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image20.png"),
                height: 25,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "Stack Overflow                                                    ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button4
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.geeksforgeeks.org',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image21.png"),
                height: 25,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "Geeks for Geeks                                      ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button5
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.codingninjas.com/',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image22.png"),
                height: 25,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "Coding Ninja                                              ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button6
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.tutorialspoint.com/index.htm',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image23.png"),
                height: 25,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "tutorialspoint                                          ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button7
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.javatpoint.com/',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image24.png"),
                height: 30,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "   javaTpoint                                               ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button8
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.techtarget.com/',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/image25.png"),
                height: 40,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "TechTarget                                               ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button9
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://byjus.com/',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/photo28.png"),
                height: 25,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "BYJU'S                                                      ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button10
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.guru99.com/',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/photo26.png"),
                height: 40,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "GURU99                                                 ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            //button11
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.amber, width: 1), // Background color
              ),
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.hackerrank.com/',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: const Image(
                image: AssetImage("images/photo27.png"),
                height: 40,
                width: 70,
              ), //icon data for elevated button
              label: const Text(
                "HackerRank                                                             ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ), //label text
            ),
            const SizedBox(
              height: 8,
            ),

            const Divider(
              height: 50,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ));
  }
}

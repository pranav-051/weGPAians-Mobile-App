import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CSESem3Sub6Utube extends StatefulWidget {
  const CSESem3Sub6Utube({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CSESem3Sub6Utube> createState() => _CSESem3Sub6Utube();
}

class _CSESem3Sub6Utube extends State<CSESem3Sub6Utube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('YouTube Channels List          ',
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
                  "YouTube Channels List for reference only",
                  style: TextStyle(
                      fontSize: 15,
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
                  'https://www.youtube.com/watch?v=kDHZhz74TtI&list=PLI8OA8TUlOBk2nbiZPshD09yy_Z2f_1yn',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },

              icon: Icon(Icons.insert_link, color: Colors.orange,),
              label: const Text(
                "Maharashtra Engineering Academy",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black),
              ),//icon data for elevated button//label text
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
                  'https://youtube.com/playlist?list=PLWeZgQblButd3IVyVUMUZhM-F4YVIe9ki',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: Icon(Icons.insert_link, color: Colors.orange,),
              label: const Text(
                "Polytechnic Exam by EXAMPUR       ",
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
                  'https://youtube.com/playlist?list=PLkZFXMjtq0D04SV-rkHVyHD7z_Y_NHunp',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              icon: Icon(Icons.insert_link, color: Colors.orange,),
              label: const Text(
                "Polytechnic Studies                            ",
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

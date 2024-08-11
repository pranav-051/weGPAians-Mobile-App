import 'package:flutter/material.dart';

class CivilSem5Sub1 extends StatefulWidget {
  const CivilSem5Sub1({key, required this.title});
  final String title;
  @override
  State<CivilSem5Sub1> createState() => _CivilSem5Sub1();
}

class _CivilSem5Sub1 extends State<CivilSem5Sub1> {
  bool semester = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors.white), //drawer menu button code for changing color
          //    backgroundColor: const Color(0xfff79c4f),
          centerTitle: true,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text('Cloud Computing        ',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  const <Widget>[
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
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image5.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 70,),
                          Text("Curriculum",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image7.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 60,),
                          Text("E-Books",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("subject wise",
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
                      image: AssetImage("images/image8.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image10.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 15,),
                          Text("Sample Question Papers",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("of end semester examination",
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
                      image: AssetImage("images/image11.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 60,),

                          Text("Question Paper Format",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              )),
                          Text("of end term examination",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
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
                      image: AssetImage("images/image12.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 70,),
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
                      image: AssetImage("images/image13.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),

                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 70,),
                          Text("Micro-project Format",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
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

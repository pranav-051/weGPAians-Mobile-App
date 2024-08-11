import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/BottomNavPages/Page4/locator.dart';
import 'package:untitled/NavDrawer.dart';
import '../Screens/dumy.dart';
import 'Page4/homePage.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Page4> createState() => _Page4();
}

class _Page4 extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white), //drawer menu button code for changing color
        centerTitle: true,

        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('About GPA         ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500)),
          ])),
      body: ListView(shrinkWrap: true, children: <Widget>[
        Row(
          children: [
            Column(children: <Widget>[
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: Image.asset(
                      'images/GPALogo.jpeg',
                      height: 80,
                      width: 80,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: const Text(
                          "Government Polytechnic, Amravati ",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: const Text(
                          "    An autonomous Institute of govt. ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: const Text(
                          "           of Maharashtra               ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),),],)],),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 10,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      border: const Border.symmetric(),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                            offset: Offset(5.0, 5.0))
                      ]),),]),],),
        const SizedBox(height: 5,),
        CarouselSlider(
          items: [
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("images/image15.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("images/image14.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("images/image16.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("images/image17.jpg"),
                  fit: BoxFit.cover,
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
            autoPlayAnimationDuration: const Duration(milliseconds: 900),
            viewportFraction: 1,
          ),
        ),

        const Divider(
          color: Colors.black45,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "   Government Polytechnic, Amravati",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.red),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "      An Autonomous Institute of Govt. of Maharashtra.",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.blueGrey),
        ),
        // const SizedBox(
        //   height: 1,
        // ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
"""     Government  Polytechnic,  Amravati  is  an  auto- 
nomous Institute of Govt. Polytechnic, Maharashtra
established  in  the  year  1955.  This  institute has a 
long  history  of  producing  technical  manpower  
and  rendering   technical  services  to  the  society. 
 
   Many  students  of  this  institute  are  chairing  the
topmost positions in various government offices and 
in    reputed    industries.   Few    of    the    students  
became   successful   entrepreneur   looking   to   the 
overall performance of the institute. MSBTE, Mumbai 
has  awarded  academic  autonomy  to  the  institute  from  1995.
 
The ISTE of Maharashtra & Goa section has awarded
the institute by Narsee Monje Award in 2005 & Best
 Polytechnic   award   in   2015.   The   institute   has
separate trainee hostel with all facilities for accom-
modation purpose. The institute has separate Library 
building with all equipped resources.""",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black54),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        //----------------------------------------------------------------
        Row(
          children: [
            const SizedBox(
              width: 35,
            ),
            Column(
              children: [
                Image.asset(
                  'images/director.png',
                  height: 120,
                  width: 120,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Dr. Vinod M. Mohitkar",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "I/C Director, DTE",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Image.asset(
                  'images/joindirector.png',
                  height: 120,
                  width: 120,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Dr. V. R. Mankar",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "I/C Joint Director, Regional ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Text(
                  "Office Amravati ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "   Vision & Mission",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blueGrey),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 480,
          color: Colors.blueGrey[50],
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const SizedBox(width: 20,),
              Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    'images/vision.jpg',
                    height: 150,
                    width: 230,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Institute: Vision",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.blueGrey),
                  ),
                  const Text(""" 
    
    • To  be  a  vibrant  technical  institute
    of global repute contributing towards 
    the needs of industries and society.""",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.blueGrey)),
                ],
              ),
              const SizedBox(width: 20,),
              Column(
                children: [
                  const SizedBox(
                    height: 22,
                  ),
                  Image.asset(
                    'images/mission.jpg',
                    //height: 200,
                    width: 260,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "     Institute: Mission",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.blueGrey),
                  ),
                  const Text(""" 
    
    • To develop competent diploma engineers 
    suitable    for    contemporary    industrial 
    environment.
    
    • To include socially accepted ethics & 
    values among budding engineers.
    
    • To nurture innovations and 
    entrepreneurship.
    
    • To produce engineers with psychomotor
    & cognitive skills committed to lifelong 
    learning.""",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.blueGrey)),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 30,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),

        //===================================================================Youtube video 1
        //const Divider(thickness: 2),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "    Campus Tour!!",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.blueGrey),
        ),
        const SizedBox(
          height: 10,
        ),
        const HomePage(),
        const Divider(),
        const Image(
            height: 160,
            fit: BoxFit.cover,
            image: AssetImage(
              "images/image99.png",
            )),

        const Image(
            height: 25,
            fit: BoxFit.cover,
            image: AssetImage(
              "images/image98.png",
            )),
      ]),

      //------------------------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        splashColor: Colors.orange,
        elevation: 10,
        tooltip: 'Locator',
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LocatorPage()));
        },
        child: const Icon(
          Icons.location_pin,
          color: Colors.black87,
        ),
      ),
      //------------------------------------------------------------------------
    );
  }
}

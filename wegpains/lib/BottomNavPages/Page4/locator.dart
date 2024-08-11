import 'package:flutter/material.dart';

class LocatorPage extends StatelessWidget {
  const LocatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white), //drawer menu button code for changing color
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('Locator         ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      body: ListView(
        // shrinkWrap: true,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
                width: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/PrincipalCabin.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/ControllerOE.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/TAPO.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              /////////////////////////////////first row end#end
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                      """
Principal 
   Cabin"""),
                  SizedBox(
                    width: 50,
                  ),
                  Text("""
Controller of
Examination"""),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
"""
Training &
Placement 
Office"""),
                ],
              ),
              ///////////////////////////////////////////name of first row #end
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/Liberary.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/ConO.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/Gymkhana.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              /////////////////////////////////second row end #end
              const Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text("Library"),
                  SizedBox(
                    width: 38,
                  ),
                  Text("Conference Hall"),
                  SizedBox(
                    width: 35,
                  ),
                  Text("Gymkhana"),
                ],
              ),
              ///////////////////////////////////////////name of second row #end////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/ApplidMech.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/ChemEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/CivilEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              /////////////////////////////////third row end #end
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
"""   Applied 
Mechanics"""),
                  SizedBox(
                    width: 45,
                  ),
                  Text(
"""   Chemical 
Enggineering"""),
                  SizedBox(
                    width: 40,
                  ),
                  Text("""      Civil 
Engineering"""),
                ],
              ),
              ///////////////////////////////////////////name of third row #end////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/CompEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/EntcEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/ITEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              /////////////////////////////////forth row end #end
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text("""  Computer 
Engineering"""),
                  SizedBox(
                    width: 20,
                  ),
                  Text("""      Electronic &
Telecommunication
    Engineering"""),
                  SizedBox(
                    width: 15,
                  ),
                  Text("""Information
Technology
Engineering"""),
                ],
              ),
              ///////////////////////////////////////////name of forth row #end////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/MechEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/PEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/PPEngg.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              /////////////////////////////////fifth row end #end
              const Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
"""Mechanical
Engineering"""),
                  SizedBox(
                    width: 50,
                  ),
                  Text("""
 Pharmacy
Engineering"""),
                  SizedBox(
                    width: 40,
                  ),
                  Text("""
  Plastic &
  Polymer 
Engineering"""),
                ],
              ),
              ///////////////////////////////////////////name of fifth row #end////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/Sch.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/COStore.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/BHostel.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              /////////////////////////////////sixth row end #end
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text("""
 Science &
Humanities"""),
                  SizedBox(
                    width: 40,
                  ),
                  Text("""
Co-Operative
     Store"""),
                  SizedBox(
                    width: 55,
                  ),
                  Text("""
 Boys
Hostel"""),
                ],
              ),
              ///////////////////////////////////////////name of sixth row #end////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/GHostel.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/THostel.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/Canteen.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              /////////////////////////////////seventh row end #end
              const Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text("Girls Hostel"),
                  SizedBox(
                    width: 35,
                  ),
                  Text("Trainee Hostel"),
                  SizedBox(
                    width: 50,
                  ),
                  Text("Canteen"),
                ],
              ),
              ///////////////////////////////////////////name of seventh row #end////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/Garden.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/QRCode/JDRO.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              /////////////////////////////////eighth row end #end
              const Row(
                children: [
                  SizedBox(
                    width: 95,
                  ),
                  Text("Garden"),
                  SizedBox(
                    width: 0,
                  ),
                  Text("""
                    Joint Director
                  Technical Education 
                    Regional Office
                  """),
                ],
              ),
              ///////////////////////////////////////////name of eighth row #end////////////////////////////////
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                width: 20,
              ),
              const Divider(
                color: Colors.blueGrey,
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children:  [
                  const SizedBox(width: 20,),
                  Icon(Icons.follow_the_signs,color: Colors.blueGrey[800]),
                  Text(" Steps to Navigate Location:         ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight:FontWeight.w500,
                        color: Colors.blueGrey[800]
                    ),),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:  [
                    const SizedBox(
                      height: 6,
                    ),
                    Text("1) Open your Mobile Phone Camera.                   ",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight:FontWeight.w500,
                        color: Colors.blueGrey[400]
                      ),),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("2) Scan the desired Location's QR Code.             ",
                      style: TextStyle(
                        fontSize: 13,
                          fontWeight:FontWeight.w500,
                          color: Colors.blueGrey[400]
                      ),),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("3) Tap on the Generated Link.                                ",
                      style: TextStyle(
                        fontSize: 13,
                          fontWeight:FontWeight.w500,
                          color: Colors.blueGrey[400]
                      ),),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("4) Tap on Direction in Google Maps.                    ",
                      style: TextStyle(
                        fontSize: 13,
                          fontWeight:FontWeight.w500,
                          color: Colors.blueGrey[400]
                      ),),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("5) Follow the direction.                                            ",
                      style: TextStyle(
                        fontSize: 13,
                          fontWeight:FontWeight.w500,
                          color: Colors.blueGrey[400]
                      ),),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("6) And you will be at your Direction.                      ",
                      style: TextStyle(
                        fontSize: 13,
                          fontWeight:FontWeight.w500,
                          color: Colors.blueGrey[400]
                      ),),
                  ],
                ),
              ),







              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

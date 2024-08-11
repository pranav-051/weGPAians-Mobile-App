import 'package:flutter/material.dart';
import 'package:untitled/Screens/login_screen.dart';
// import 'package:untitled/Widget/bezierContainer.dart';
import '../HomePage.dart';
import 'registration_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

//here we are creating the components first then we used them in the class and align them appropriate.
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  // ignore: library_private_types_in_public_api
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //----------------------------------------------------------------------------
  Widget _slider() {
    return CarouselSlider(
      items: [
        Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: AssetImage("images/wel3.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: AssetImage("images/wel2.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: AssetImage("images/wel1.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 550,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 15,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 100),
        viewportFraction: 1,
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      //The InkWell class is a rectangular area of a Material widget that responds to touch events by displaying a clipped splash. The Material widget is responsible for the ink effects that are displayed when a touch event occurs. The Material refers to the area where the ink reactions are painted.
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const LoginScreen())); //if login button pressed then move to the login page
      },

      child: Container(
        width: 300,
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.orangeAccent),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.grey,
              )
            ],
            color: Colors.white),
        child: const Text(
          'Login Now',
          style: TextStyle(
              fontSize: 21,
              color: Color(0xfff7892b),
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  //----------------------------------------------------------------------------
  Widget _signUpButton() {

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const RegistrationScreen()));
      },
      child: Container(
        width: 300,
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.orangeAccent),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.grey,
              )
            ],
            color: Colors.white),
        child: const Text(
          'Register now',
          style: TextStyle(
              fontSize: 21,
              color: Color(0xfff7892b),
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  //Dummy button
  Widget _backdoor() {

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MyHomePage(title: 'homepage',)));
      },
      child: Container(
        width: 300,
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.orangeAccent),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.grey,
              )
            ],
            color: Colors.white),
        child: const Text(
          'Backdoor',
          style: TextStyle(
              fontSize: 21,
              color: Color(0xfff7892b),
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  //----------------------------------------------------------------------------
  // Widget _title() {
  //   return RichText(
  //     textAlign: TextAlign.center,
  //     text: const TextSpan(
  //         text: 'Welcome to',
  //         style: TextStyle(
  //             color: Colors.orange,
  //             fontWeight: FontWeight.bold,
  //             fontSize: 30.0)),
  //   );
  // }

  //----------------------------------------------------------------------------

  // Widget _divider() {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(vertical: 10),
  //     child: Row(
  //       children: const <Widget>[
  //         SizedBox(
  //           width: 20,
  //         ),
  //         Expanded(
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 5),
  //             child: Divider(
  //               thickness: 1,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  //---------------------------------------------------------------------------
  // Widget _title2() {
  //   return RichText(
  //     textAlign: TextAlign.center,
  //     text: const TextSpan(
  //         text: 'Government Polytechnic, Amravati',
  //         style: TextStyle(
  //             color: Colors.orange,
  //             fontWeight: FontWeight.w400,
  //             fontSize: 20.0)),
  //   );
  // }

  // Widget _appicon(){
  //   return   Image.asset(
  //     'images/logo.png',
  //     height: 70,
  //     width: 70,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            //curve
              child: Stack(children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height:40,),
                    _slider(),
                    const Divider(),
                    const SizedBox(height: 10),
                    _submitButton(),
                    const SizedBox(height: 20),
                    _signUpButton(),
                    const SizedBox(height: 130),
                    _backdoor(),
                    const SizedBox(height:30),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}

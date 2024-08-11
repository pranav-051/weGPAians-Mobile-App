import 'package:untitled/BottomNavPages/Page1.dart';
import 'package:untitled/BottomNavPages/Page4/homePage.dart';

import '/HomePage.dart';
import '/screens/registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/Widget/bezierContainer.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;

  @override
  Widget build(BuildContext context) {

// code for signing with google
    // singInWithGoogle() async {
    //   GoogleSignInAccount? googleUser= await GoogleSignIn().signIn();
    //   GoogleSignInAuthentication? googleAuth= await googleUser?.authentication;
    //   AuthCredential credential = GoogleAuthProvider.credential(
    //     accessToken: googleAuth?.accessToken,
    //     idToken: googleAuth?.idToken
    //   );
    //   UserCredential userCredential
    //       = await FirebaseAuth.instance.signInWithCredential(credential);
    //   print(userCredential.user?.displayName);
    //
    //   if (userCredential.user != null){
    //
    //     // Navigator.of(context).push(MaterialPageRoute(
    //     //     builder: (context) => const Page1(title:" hello user")));
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const Page1(title: "Page1")));
    //   }
    // }


    final height = MediaQuery.of(context).size.height;
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "E-mail",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
          return null;
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final loginButton = Material(
      elevation: 7,
      borderRadius: BorderRadius.circular(16),
      color: Colors.red,
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            signIn(emailController.text, passwordController.text);
          },
          child: const Text(
            "Login Now",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.w300),
          )),
    );


    final GButton = IconButton(
      icon: Image.asset('images/google.png'),
      iconSize: 35,
      onPressed: () {},
    );




    final FBButton = IconButton(
      icon: Image.asset('images/facebook.png'),
      iconSize: 35,
      onPressed: () {},
    );
    final MSButton = IconButton(
      icon: Image.asset('images/MS.png'),
      iconSize: 35,
      onPressed: () {},
    );
    final TButton = IconButton(
      icon: Image.asset('images/Tweeter.png'),
      iconSize: 35,
      onPressed: () {},
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                //curve
                child: SizedBox(
                  height: height,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: -height * .15,
                        right: -MediaQuery.of(context).size.width * .4,
                        child: const BezierContainer()),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 70,),
                            SizedBox(
                                height: 90,
                                child: Image.asset(
                                  "images/logo.png",
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(height: 45),
                            emailField,
                            const SizedBox(height: 25),
                            passwordField,
                            const SizedBox(height: 35),
                            loginButton,
                            const SizedBox(height: 35),
                            const Text("or sign-up using", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 19),),
                            const SizedBox(height: 35,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GButton,
                                FBButton,
                                MSButton,
                                TButton,
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text("Don't have an account? "),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const RegistrationScreen()));
                                    },
                                    child: const Text(
                                      "SignUp",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  )
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            )));
  }

  // login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
          Fluttertoast.showToast(msg: "Login Successful"),
        Navigator.pushNamed(context, "phone")

          // Navigator.of(context).pushReplacement(MaterialPageRoute(
          //     builder: (context) =>  phone)),
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}

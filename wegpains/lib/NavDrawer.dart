import 'package:flutter/material.dart';
import 'package:untitled/Screens/WelcomePage.dart';
import '/SidebarNavPages/SideNavPage1.dart';
import '/SidebarNavPages/SideNavPage3.dart';
import '/SidebarNavPages/SideNavPage5.dart';
import '/SidebarNavPages/SideNavPage6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:share_plus/share_plus.dart';

import 'SidebarNavPages/SideNavPage7.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final String _content =
      'My Instagram account link: https://www.instagram.com/accounts/login/';

  void _shareContent(BuildContext context) {
    Share.share(_content);
  }

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

//------------------------------------------------------------------------------------------------------------------------
  //below code for rate us button
  final _dialog = RatingDialog(
    starSize: 35,
    // your app's name?
    title: const Text(
      '         weGPAins',
      style: TextStyle(
          color: Colors.orange, fontWeight: FontWeight.w500, fontSize: 25),
    ),
    // encourage your user to leave a high rating?
    message: const Text(
      '  Rate us 5* and Support Us',
      style: TextStyle(
          color: Colors.orange, fontWeight: FontWeight.w300, fontSize: 19),
    ),
    // your app's logo?
    image: Image.asset(
      "images/logo.png",
      height: 70,
      width: 70,
    ),
    submitButtonText: 'Submit',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');
      // TODO: add your own logic
      if (response.rating < 3.0) {
        // send their comments to your email or anywhere you wish
        // ask the user to contact you instead of leaving a bad review
      } else {
        //go to app store
        StoreRedirect.redirect(
            androidAppId: 'com.example.wegpaiens',
            iOSAppId: 'com.example.wegpaiens');
      }
    },
  );
//-----------------------------------------------------------------------------------------------------------------------------
  //below code for logout button
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
//----------------------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280,
      elevation: 5,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.orangeAccent),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "images/image2.jpg",
                fit: BoxFit.cover,
              ),
            ),
            accountName:
                Text("${loggedInUser.firstName} ${loggedInUser.secondName}",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    )),
            accountEmail: Text("${loggedInUser.email}",
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                )),
          ),

          ListTile(
            leading:
                const Icon(Icons.account_circle_outlined, color: Colors.orange),
            title: const Text('Profile',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SideNavPage1(title: 'SideNavPage1')),
              )
            },
          ),

          ListTile(
              leading: const Icon(Icons.share_sharp, color: Colors.orange),
              title: const Text('Share',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
              onTap: () => {_shareContent(context)}),
          ListTile(
            leading: const Icon(Icons.settings_outlined, color: Colors.orange),
            title: const Text('Settings',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const SideNavPage3(title: 'SideNavPage3')),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_rate_outlined, color: Colors.orange),
            title: const Text('Rate Us',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            onTap: () => {
              showDialog(
                context: context,
                builder: (context) => _dialog,
              )
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.help_outline_outlined, color: Colors.orange),
            title: const Text('FAQs',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const SideNavPage5(title: 'SideNavPage5')),
              )
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.privacy_tip_outlined, color: Colors.orange),
            title: const Text('Privacy Policy',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const SideNavPage6(title: 'SideNavPage6')),
              )
            },
          ),

          ListTile(
            leading:
            const Icon(Icons.developer_mode, color: Colors.orange),
            title: const Text('About Team',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    TeamPage()
            )
              )},
          ),

          ListTile(
            leading: const Icon(Icons.logout, color: Colors.orange),
            title: const Text('Logout',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            onTap: () => {logout(context)},
          ),

          const Divider(
            thickness: 1,
            height: 5,
          ),

          // ignore: prefer_const_constructors
          SizedBox(height: 5.0),
          const Text(
            "      Version:  1.0.1",
            style: TextStyle(fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const WelcomePage()));
  }
}

import 'package:flutter/material.dart';

class SideNavPage5 extends StatefulWidget {
  const SideNavPage5({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SideNavPage5> createState() => _SideNavPage5();
}

class _SideNavPage5 extends State<SideNavPage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,

          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('FAQs          ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(40),
          children: <Widget>[
            const Divider(height: 1),
            ExpansionTile(
              title: const Text('How can I sign in to the weGPAins app ?'),
              children: <Widget>[
                ListTile(
                  title: const Text('There are 2 ways you can sign in into the app:                                                          '
                      ' 1) By Clicking on Register now on the welcome page.                                          '
                      ' 2) Sign in with Google.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),
              ],
            ),
            const Divider(height: 1),
            const SizedBox(
              height: 20,
            ),

            const Divider(height: 1),
            ExpansionTile(
              title: const Text('How can I get the study material for a specific course of my branch ?'),
              children: <Widget>[
                ListTile(
                  title: const Text('--Go to the Explore section from the Home Page and then follow the steps:    1) Tap on your Branch (Ex. Computer Engineering)                                               2) Then Select the appropriate semester from the years specified (Ex. Third Year->VI Semester)'
                      '                                         3) Choose your course from the list (Ex. [CM5465] Cloud Computing)'
                      '                       4) There will be various sections available there like curriculum, e-books, websitesSelect according to your requirement and fulfill your needs accordingly. This way you   can reach to the study material '),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),

              ],
            ),
            const Divider(height: 1),
            const SizedBox(
              height: 20,
            ),
            const Divider(height: 1),
            ExpansionTile(
              title: const Text('How can I locate the department using the Location Navigator ?'),
              children: <Widget>[
                ListTile(
                  title: const Text('--Go to About GPA Section->Click on the location Navigator Icon present in the bottom right side->Scan the code of the department.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),

              ],
            ),
            const Divider(height: 1),
            const SizedBox(
              height: 20,
            ),
            const Divider(height: 1),
            ExpansionTile(
              title: const Text('Question No 4'),
              children: <Widget>[
                ListTile(
                  title: const Text('Answer'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),

              ],
            ),
            const Divider(height: 1),
            const SizedBox(
              height: 20,
            ),
            const Divider(height: 1),
            ExpansionTile(
              title: const Text('Question No 5'),
              children: <Widget>[
                ListTile(
                  title: const Text('Answer'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),

              ],
            ),
            const Divider(height: 1),
            const SizedBox(
              height: 20,
            ),

          ],
        )

    );
  }
}
















// import 'package:flutter/material.dart';
// import 'SidebarSubPages/FAQsPage.dart';
// import 'SidebarSubPages/FeedbackPage.dart';
//
// class SideNavPage5 extends StatefulWidget {
//   const SideNavPage5({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<SideNavPage5> createState() => _SideNavPage5();
// }
//
// class _SideNavPage5 extends State<SideNavPage5> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         iconTheme: const IconThemeData(color: Colors.white),
//         centerTitle: true,
//
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text('Help Center          ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
//         ),
//       ),
//       body:  ListView(
//         padding: const EdgeInsets.all(40),
//         children: <Widget>[
//           const SizedBox(height: 10),
//           ///Civil Engineering //////////////////////////////////////////////
//           OutlinedButton(
//             style: OutlinedButton.styleFrom(
//                 shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10))),
//                 backgroundColor: Colors.white,
//                 elevation: 10,
//                 alignment: Alignment.center,
//                 minimumSize: const Size.fromHeight(50),
//                 side: const BorderSide(color: Colors.orangeAccent, width: 1)),
//             child: const Text(
//               "FAQs",
//               textAlign: TextAlign.right,
//               style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16),
//             ),
//             onPressed: () => {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) =>  const FAQsPage(title: 'FAQsPage')),
//               )
//
//             },
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           const SizedBox(height: 20),
//           // ///Mechanical Engineering //////////////////////////////////////////////
//           // OutlinedButton(
//           //   style: OutlinedButton.styleFrom(
//           //     shape: const RoundedRectangleBorder(
//           //         borderRadius: BorderRadius.all(Radius.circular(10))),
//           //     backgroundColor: Colors.white,
//           //     elevation: 10,
//           //     alignment: Alignment.center,
//           //     minimumSize: const Size.fromHeight(50),
//           //     side: const BorderSide(color: Colors.orangeAccent, width: 1),
//           //   ),
//           //   child: const Text("Feedback Form",
//           //       style: TextStyle(
//           //           color: Colors.black,
//           //           fontWeight: FontWeight.w400,
//           //           fontSize: 16)),
//           //   onPressed: () => {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(builder: (context) =>  const FeedbackPage(title: 'FAQsPage')),
//           //     )
//           //
//           //   },
//           // ),
//           // const SizedBox(
//           //   height: 8,
//           // ),
//
//           //const SizedBox(height: 20),
//           ///ENTC Engineering //////////////////////////////////////////////
//           OutlinedButton(
//             style: OutlinedButton.styleFrom(
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10))),
//               backgroundColor: Colors.white,
//               elevation: 10,
//               alignment: Alignment.center,
//               minimumSize: const Size.fromHeight(50),
//               side: const BorderSide(color: Colors.orangeAccent, width: 1),
//             ),
//             child: const Text(
//               "Report A Problem",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16),
//             ),
//             onPressed: () => {
//             Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) =>  const ReportAProblem(title: 'FAQsPage')),
//             )
//             },
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//
//           const Divider(height: 50),
//           const SizedBox(
//             height: 100,
//           )
//         ],
//       )
//
//
//     );
//   }
// }

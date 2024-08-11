import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:store_redirect/store_redirect.dart';

class SideNavPage4 extends StatefulWidget {
  const SideNavPage4({Key? key,  required this.title}) : super(key: key);
  final String title;
  @override
  State<SideNavPage4> createState() => _SideNavPage4();
}

class _SideNavPage4 extends State<SideNavPage4> {
  final _dialog = RatingDialog(
    // your app's name?
    title: const Text('Rate Us On App Store'),
    // encourage your user to leave a high rating?
    message:
    const Text('Select Number of Stars 1 - 5 to Rate This App'),
    // your app's logo?
    image: const FlutterLogo(size: 60),
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
        StoreRedirect.redirect(androidAppId: 'com.example.wegpaiens',iOSAppId: 'com.example.wegpaiens');
      }
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: (){

              // load dialog to show it
              showDialog(
                context: context,
                builder: (context) => _dialog,
              );
            },child: const Text('Show Rating Dialog'),
          ),
        )
    );
  }
}
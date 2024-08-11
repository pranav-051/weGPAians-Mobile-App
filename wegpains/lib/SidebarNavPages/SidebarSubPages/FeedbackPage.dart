import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({key, required this.title});
  final String title;
  @override
  State<FeedbackPage> createState() => _FeedbackPage();
}

class _FeedbackPage extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Text('Feedback Form         ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
          ),
        ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text("Please Select the Type of the feedback",style: TextStyle(
              color: Color(0xffc5c5c5)),
            ),
            SizedBox(height: 25.0),
            buildCheckItem("Login Truble"),
            buildCheckItem("Phone Number Related"),
            buildCheckItem("Personal Profile"),
            buildCheckItem("Other Issues"),
            buildCheckItem("Suggestions"),
            SizedBox(height: 20.0),
            buildFeedbackForm(),
            SizedBox(height: 20.0),
            buildNumberField(),
        Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child : OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      backgroundColor: Colors.white,
                      elevation: 10,
                      alignment: Alignment.center,
                      minimumSize: const Size.fromHeight(50),
                      side: const BorderSide(color: Colors.orangeAccent, width: 5),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    onPressed: () => {
                    },
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }

  buildNumberField(){
    return TextField(style: TextStyle(
      color: Colors.black,
    ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(border: Border(
                right: BorderSide(width: 1.0,color: Color(0xffc5c5c5))

              )
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Text(
                    "+91",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffc5c5c5),
                    ),

                  ),
                  Icon(Icons.arrow_drop_down,color: Colors.cyan),
                  SizedBox(width: 10.0),
                ],
              ),
            )
          ],
      ),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xffc5c5c5),
        ),
        hintText: "Phone Number",
        border: OutlineInputBorder(),
    )
    );
  }


  buildFeedbackForm(){
    return Container(
      height: 150.0,
      child: Stack(
        children: <Widget>[
          TextField(
            maxLines: 10,
            decoration: InputDecoration(
              hintText: "Please briefly describe the issue",
              hintStyle: TextStyle(
                fontSize: 13.0,
                color: Color(0xffc5c5c5),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe5e5e5)),
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Color(0xffa6a6a6),
                  )
                )
              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe5e5e5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        color: Color(0xffa5a5a5),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text( "Uplode Screenshot (Optional)",
                    style: TextStyle(
                      color: Color(0xffc5c5c5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  buildCheckItem(title){
    return Padding(padding: EdgeInsets.only(bottom: 15.0),
    child: Row(
      children: <Widget>[
        Icon(Icons.check_circle,color: Colors.orange),
        SizedBox(width: 10.0),
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
        )
      ],
    ),
    );
  }
  
}

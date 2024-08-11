import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SideNavPage1 extends StatelessWidget {
  const SideNavPage1({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProfileController());
    return Scaffold(
      appBar:AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Profile          ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:  const EdgeInsets.all(35),
          child: Column(
            children: [
              // -- IMAGE with ICON
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:  const Image(image: AssetImage("images/profile.png"))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.orangeAccent),
                      child: const Icon(LineAwesomeIcons.retro_camera, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // -- Form Fields
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Name"), prefixIcon: Icon(LineAwesomeIcons.user)),
                    ),
                    const SizedBox(height:  20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Email ID"), prefixIcon: Icon(LineAwesomeIcons.envelope_1)),
                    ),
                    const SizedBox(height:  20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Phone number"), prefixIcon: Icon(LineAwesomeIcons.phone)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text("Change Password"),
                        prefixIcon: const Icon(Icons.key),
                        suffixIcon:
                        IconButton(icon: const Icon(LineAwesomeIcons.eye_slash), onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text("Confirm Password"),
                        prefixIcon: const Icon(Icons.key),
                        suffixIcon:
                        IconButton(icon: const Icon(LineAwesomeIcons.eye_slash), onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // -- Form Submit Button
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            elevation: 10,
                            backgroundColor: Colors.orange,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text("Update", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // -- Created Date and Delete Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
                              elevation: 0,
                              foregroundColor: Colors.orange,
                              shape: const StadiumBorder(),
                              side: BorderSide.none),
                          child: const Text("Clear"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
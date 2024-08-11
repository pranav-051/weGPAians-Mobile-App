import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SideNavPage3 extends StatefulWidget {
  const SideNavPage3({Key? key,  required this.title}) : super(key: key);
  final String title;
  @override
  State<SideNavPage3> createState() => _SideNavPage3();
}

class _SideNavPage3 extends State<SideNavPage3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar:AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,

        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Settings          ',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),],
        ),
      ),

      body: SettingsList(
        sections: [
          SettingsSection(
            //titlePadding: const EdgeInsets.all(20),
            title: const Text('Section 1'),
            tiles: [
              SettingsTile(
                title: const Text('Language'),
                //title: const Text('English'),
                leading: const Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: const Text('Use System Theme'),
                leading: const Icon(Icons.phone_android),
                //switchValue: isSwitched,
                onToggle: (value) {
                  setState(() {});
                }, initialValue: null,
              ),
            ],
          ),
          SettingsSection(
            // titlePadding: const EdgeInsets.all(20),
            title: const Text('Section 2'),
            tiles: [
              SettingsTile(
                title: const Text('Security'),
               // title: const Text('Fingerprint'),
                leading: const Icon(Icons.lock),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: const Text('Use fingerprint'),
                leading: const Icon(Icons.fingerprint),
                //switchValue: true,
                onToggle: (value) {}, initialValue: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
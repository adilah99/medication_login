import 'package:flutter/material.dart';
import 'package:medication_login/screens/med_comp/body.dart';
import 'package:medication_login/screens/my_medication_screen.dart';
import 'package:medication_login/services/auth.dart';
import 'package:medication_login/shared/constant_med.dart';

class MedicationScreen extends StatelessWidget {

  final AuthService _auth = AuthService();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('MedicationApp'),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicationScreen()),
                );
              },
            ),
            ListTile(
              title: Text('My Medication'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyMedicationScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Set Reminder'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
      ),
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Dashboard'),
      centerTitle: false,
      backgroundColor: Colors.amber[800],
      actions: <Widget> [
        
            
                    ],
    );
  }
}

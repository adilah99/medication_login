import 'package:flutter/material.dart';
import 'package:medication_login/screens/med_comp/my_medication.dart';
import 'package:medication_login/screens/medication_screen.dart';
import 'package:medication_login/screens/time_picker.dart';

import 'package:medication_login/shared/constant_med.dart';


class MyMedicationScreen extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
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
              onTap: () {},
            ),
            ListTile(
              title: Text('Set Reminder'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TimePicker()),
                );
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {},
            )],
        ),
      ),
      appBar: buildAppBar(),
      body: MyMedication(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
     
        backgroundColor: Colors.amber[800],
      
      title: Text('My Medication'),
      centerTitle: false,
      actions: <Widget>[],
    );
  }
}

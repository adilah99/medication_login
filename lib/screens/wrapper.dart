import 'package:medication_login/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart' ;
import 'package:medication_login/screens/medication_screen.dart';
import 'package:provider/provider.dart';
import 'package:medication_login/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    

    // return either home or authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return MedicationScreen();
    }
      
  }
}
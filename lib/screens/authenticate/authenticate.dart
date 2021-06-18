import 'package:flutter/material.dart' ;
import 'package:medication_login/screens/authenticate/login.dart';
import 'package:medication_login/screens/authenticate/register.dart';



class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
 bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn) {
      return SignIn (toggleView: toggleView);
    } else {
      return Register (toggleView: toggleView);
    }
  }
}
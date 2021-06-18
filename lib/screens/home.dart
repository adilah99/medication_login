
import 'package:flutter/material.dart' ;
import 'package:medication_login/services/auth.dart';


class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text('Medinfo'),
          backgroundColor: Colors.amber,
          elevation: 0.0,
          actions: <Widget> [
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
          ),
                    ],
          ),
         
    );
      
  }
}
import 'package:flutter/material.dart';
import 'package:medication_login/components/search.dart';
import 'package:medication_login/screens/med_comp/medication_cart.dart';
import 'package:medication_login/shared/constant_med.dart';
import 'package:medication_login/models/medication.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SearchBox(
        onChanged: (value) {},
      ),
      Expanded(
        child: Stack(children: <Widget>[
          //background
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) => MedicationCard(
              itemIndex: index,
              medication: medications[index],
              press: () {},
            ),
            itemCount: medications.length,
          )
        ]),
      )
    ]);
  }
}

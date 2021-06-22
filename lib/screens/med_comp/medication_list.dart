import 'package:flutter/material.dart';
import 'package:medication_login/models/medication.dart';
import 'package:medication_login/screens/time_picker.dart';
import 'package:medication_login/shared/constant_med.dart';


class MedicationList extends StatelessWidget {
  const MedicationList({
    Key key,
    this.itemIndex,
    this.medication,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Medication medication;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      //color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kBlueColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 180,
                width: 180,
                child: Image.asset(
                  medication.image,
                ),
              ),
            ),
            Positioned(
              bottom: -10,
              right: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(medication.title,
                          style: Theme.of(context).textTheme.button),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                      Container(
                      
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.0,
                        vertical: kDefaultPadding / 4,
                      ),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22)),
                         
                      
                       child: FlatButton(
                        child: Text(
                          "Set Reminder",
                          style: Theme.of(context).textTheme.button,
                        ),
                        onPressed: () {
                           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TimePicker()),
                );
                        },
                      ),
                       
                    ),
                  ]),
                  
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

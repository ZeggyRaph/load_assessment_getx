import 'package:flutter/material.dart';

class ApplianceHeading extends StatelessWidget {
  const ApplianceHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Card(
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,


          margin: EdgeInsets.only(bottom: 10),
          child: Text('APPLIANCES',
            style: TextStyle(
                fontSize: 14,
                fontWeight:
                FontWeight.bold),
          ),

          width: 120,
        ),
      ),
      Card(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 10),
          child: Text('WATTAGE',
            style: TextStyle(
                fontSize: 14,
                fontWeight:
                FontWeight.bold),
          ),
          width: 120,
        ),
      ),
      Card(child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10),
        child: Text('QUANTITY',
          style: TextStyle(
              fontSize: 14,
              fontWeight:
              FontWeight.bold),
        ),
        width: 120,
      ),),
      Card(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 10),
          child: Text('SELECT',
            style: TextStyle(
                fontSize: 14,
                fontWeight:
                FontWeight.bold),
          ),
          width: 120,
        ),
      ),
    ],
    );
  }
}

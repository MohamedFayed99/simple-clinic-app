import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 320,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.lime.shade100
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Patient Details',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Name',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
              Text(
                'Abanoub Fakhery',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Gender',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
              Text(
                'Male',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Height',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
              Text(
                '179 cm',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Weight',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
              Text(
                '62 kg',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Code',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
              Text(
                'xxxxxxxxx',
                style: TextStyle(color: Colors.purpleAccent.shade700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

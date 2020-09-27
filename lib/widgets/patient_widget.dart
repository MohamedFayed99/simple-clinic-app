import 'package:clinicapp/screens/PatientProfileScreen.dart';
import 'package:flutter/material.dart';

class PatientWidget extends StatelessWidget {
  final Color color;
  final icon;
  PatientWidget({this.color,this.icon});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, PatientProfileScreen.id);
      },
      child: Container(
        width: double.infinity,
        height: 70,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(icon),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Patient name',style: TextStyle(color: Colors.black),),
                Text("Patient type",style: TextStyle(color: Colors.grey.shade600),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('170 cm',style: TextStyle(color: Colors.black),),
                  Text("70 kg",style: TextStyle(color: Colors.black),),
                  Text('36 years',style: TextStyle(color: Colors.black),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

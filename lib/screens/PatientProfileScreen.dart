import 'package:clinicapp/screens/add_case_screen.dart';
import 'package:clinicapp/widgets/Patient_details.dart';
import 'package:clinicapp/widgets/patient_history_widget.dart';
import 'package:flutter/material.dart';

class PatientProfileScreen extends StatelessWidget {
  static String id ="PatientProfileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'Patient Profile',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Add Case"),
            textColor: Colors.white,
            onPressed: (){
              Navigator.pushNamed(context, AddCaseScreen.id);
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                PatientDetails(),
                SizedBox(height: 15,),
                PatientHistoryWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

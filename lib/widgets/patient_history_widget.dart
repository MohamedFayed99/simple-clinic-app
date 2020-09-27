import 'package:flutter/material.dart';

class PatientHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Patient History',
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),
        drawContainerInPatientHistory(),

      ],
    );
  }

  Widget drawContainerInPatientHistory(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 340,
      height: 400,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5,left: 150),
            width: 160,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(15),

            ),
            child: Padding(
              padding: const EdgeInsets.only(top:10),
              child: Text('Sunday 7/6/2020',textAlign:TextAlign.center,
                style: TextStyle(
                  color: Colors.white,

                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 180),
            child: Text('The Indication',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 10),
            child: Text('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxx'
                'xxxxxxxxxxxxxxxx'
                'xxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxx'
                'xxxxxxxxxxxxx'
                'xxxxxxxxxxx'
                'xxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxx'
                'xxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
            ),
          )
        ],
      ),
    );
  }
}

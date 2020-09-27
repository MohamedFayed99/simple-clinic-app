import 'package:clinicapp/widgets/roundedButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCaseScreen extends StatefulWidget {
  static String id = 'AddCaseScreen';
  @override
  _AddCaseScreenState createState() => _AddCaseScreenState();
}

class _AddCaseScreenState extends State<AddCaseScreen> {
  String indication;
  String treatment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Case",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('The Indication'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 370,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent.shade100,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    maxLines: 17,
                    onChanged: (value){
                      indication = value;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all( 10),
                child: Text("The Treatment"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Container(
                  width: 370,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent.shade100,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(

                    maxLines: 15,
                    onChanged: (value){
                      treatment = value;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: RoundedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  buttonText: "Add Case",

                ),
              )
            ],
          ),
        ],
      )
    );
  }
}

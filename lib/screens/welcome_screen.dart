import 'package:clinicapp/screens/login_screen.dart';
import 'package:clinicapp/screens/signup_screen.dart';
import 'package:clinicapp/widgets/roundedButtonWidget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'Welcome Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 150,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'WELCOME TO PHONE CLINIC',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 250,),
              RoundedButton(
                color: Colors.deepPurple.shade600,
                buttonText: 'LOGIN',
                textColor: Colors.white,
                onPress: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              RoundedButton(
                color: Colors.deepPurple.shade100,
                buttonText: 'REGISTER',
                textColor: Colors.purple,
                onPress: (){
                  Navigator.pushNamed(context, SignupScreen.id);
                },
              ),
            ],

          ),
        ],
      )
    );
  }
}

import 'package:clinicapp/screens/home_screen.dart';
import 'package:clinicapp/screens/signup_screen.dart';
import 'package:clinicapp/widgets/custom_text_field.dart';
import 'package:clinicapp/widgets/roundedButtonWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static String id='Login Screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  String email;
  String password;
  FirebaseAuth _auth=FirebaseAuth.instance;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: isLoading,
          child: ListView(
            children: <Widget>[
              Form(
                key: globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 140,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 65),
                      child: Text(
                        'LOGIN TO PHONE CLINIC',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    CustomTextField(
                      onClick: (value){
                        email = value;
                      },
                      hintText: 'Your Email',
                      icon: Icons.email,
                    ),
                    SizedBox(height: 20,),
                    CustomTextField(
                      onClick: (value){
                        password = value;
                      },
                      hintText: 'Your Password',
                      icon: Icons.lock,
                    ),
                    SizedBox(height: 20,),
                    FlatButton(
                      child: Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Text("FORGET PASSWORD",
                          style: TextStyle(
                              color: Colors.red,fontSize: 15),
                        ),
                      ),
                      onPressed: (){
                        },
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:40),
                      child: Builder(
                        builder:(context) => RoundedButton(
                          color: Colors.deepPurple.shade600,
                          buttonText: 'LOGIN',
                          textColor: Colors.white,
                          onPress: () async {
                            setState(() {
                              isLoading=true;
                            });
                            if(globalKey.currentState.validate()){
                              globalKey.currentState.save();
                              try {
                                globalKey.currentState.save();
                                final result = await _auth.signInWithEmailAndPassword(
                                    email: email.trim(),
                                    password: password.trim());
                                print(result.user.email);
                                Navigator.pushNamed(context, HomeScreen.id);
                              }
                              catch(e) {
                                setState(() {
                                  isLoading=false;
                                });
                                print(e.toString());
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      e.message
                                  ),
                                ));
                              }
                            }
                            setState(() {
                              isLoading=false;
                            });
                          },

                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:60),
                      child: FlatButton(
                        child: Text('CREATE ACCOUNT',style: TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, SignupScreen.id);
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}

import 'package:clinicapp/screens/login_screen.dart';
import 'package:clinicapp/screens/regScreen2.dart';
import 'package:clinicapp/widgets/custom_text_field.dart';
import 'package:clinicapp/widgets/roundedButtonWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class SignupScreen extends StatefulWidget {
  static String id='Signup Screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String email;
  String password;
  String name;
  String phone;
  bool isLoading = false;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Form(
          key: globalKey,
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 80,),
                  Text('CREATE NEW ACCOUNT',
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,fontSize: 18
                  ),
                  ),
                  SizedBox(height: 50,),
                  CustomTextField(
                    onClick: (value){
                      name = value;
                    },
                    hintText: 'Your name',
                    icon: Icons.perm_identity,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    hintText: 'Your Phone',
                    icon: Icons.phone,
                    onClick: (value){
                      phone = value;
                    },
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    hintText: 'Your Email',
                    icon: Icons.email,
                    onClick: (value){
                      email = value;
                    },
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    hintText: 'Your Password',
                    icon: Icons.lock,
                    onClick: (value){
                      password = value;
                    },
                  ),
                  SizedBox(height: 15),
                  Builder(
                    builder:(context) => RoundedButton(
                      color: Colors.deepPurple.shade600,
                      buttonText: 'NEXT',
                      textColor: Colors.white,
                      onPress: () async {
                        setState(() {
                          isLoading=true;
                        });
                        if(globalKey.currentState.validate()){
                          try {
                            globalKey.currentState.save();
                            final result = await _auth.createUserWithEmailAndPassword(
                                email: email.trim(), password: password.trim());
                            print(result.user.email);
                            Navigator.pushNamed(context, RegScreen2.id);
                          } catch(e){
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
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HAVE ACCOUNT ?',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(
                        child: Text(
                            'LOGIN',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                      )
                    ],
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

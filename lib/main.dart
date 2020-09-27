import 'package:clinicapp/screens/PatientProfileScreen.dart';
import 'package:clinicapp/screens/add_case_screen.dart';
import 'package:clinicapp/screens/history_screen.dart';
import 'package:clinicapp/screens/home_screen.dart';
import 'package:clinicapp/screens/login_screen.dart';
import 'package:clinicapp/screens/profile_screen.dart';
import 'package:clinicapp/screens/regScreen2.dart';
import 'package:clinicapp/screens/signup_screen.dart';
import 'package:clinicapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context) => WelcomeScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        SignupScreen.id:(context) => SignupScreen(),
        RegScreen2.id:(context) => RegScreen2(),
        HomeScreen.id:(context) => HomeScreen(),
        AddCaseScreen.id:(context) => AddCaseScreen(),
        HistoryScreen.id:(context) => HistoryScreen(),
        ProfileScreen.id:(context) => ProfileScreen(),
        PatientProfileScreen.id:(context) => PatientProfileScreen(),
      },
    );
  }
}

import 'package:clinicapp/screens/add_case_screen.dart';
import 'package:clinicapp/screens/history_screen.dart';
import 'package:clinicapp/screens/profile_screen.dart';
import 'package:clinicapp/screens/welcome_screen.dart';
import 'package:clinicapp/widgets/patient_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Phone Clinic Image"),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, AddCaseScreen.id);
              },
              child: Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.playlist_add,color: Colors.purple,),
                  ),
                  SizedBox(width: 20),
                  Text('Add Case',style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, HistoryScreen.id);
              },
              child: Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.history,color: Colors.purple,),
                  ),
                  SizedBox(width: 20),
                  Text('History',style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, ProfileScreen.id);
              },
              child: Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.perm_identity,color: Colors.purple,),
                  ),
                  SizedBox(width: 20),
                  Text('Profile',style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
              child: Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.launch,color: Colors.purple,),
                  ),
                  SizedBox(width: 20),
                  Text('Log Out',style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Patients'),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
              onPressed: () {
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                  borderRadius: BorderRadius.circular(15),

                  ),
                child: Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Text('Sunday 7/6/2020',textAlign:TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,

                  ),),
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: PatientWidget(
                icon: Icons.visibility,
                color: Colors.grey.shade400,
              ),
            ),
            PatientWidget(
              icon: Icons.visibility_off,
              color: Colors.white,
            ),
            PatientWidget(
              icon: Icons.visibility,
              color: Colors.grey.shade400,
            ),
            PatientWidget(
              icon: Icons.visibility_off,
              color: Colors.white,
            ),
            PatientWidget(
              icon: Icons.visibility,
              color: Colors.grey.shade400,
            ),
            PatientWidget(
              icon: Icons.visibility_off,
              color: Colors.white
            ),
            PatientWidget(
              icon: Icons.visibility,
              color: Colors.grey.shade400,
            ),
            PatientWidget(
              icon: Icons.visibility_off,
              color: Colors.white
            ),

          ],
        ),
      ),
    );
  }
}

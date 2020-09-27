import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Function onClick;
  String _errorMessage(String str){
    switch(hintText){
      case 'Your Email': return 'Email is empty';
      case 'Your name': return 'Name is empty';
      case 'Your Password': return 'Password is empty';
      case 'Your Phone': return 'Phone is empty';
    }
  }
  CustomTextField({@required this.onClick,@required this.hintText, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value){
          if(value.isEmpty){
            return _errorMessage(hintText);
            // ignore: missing_return
          }

        },
        onSaved: onClick,
        obscureText: hintText=='Your Password' ? true:false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: hintText,
          prefixIcon: Icon(icon,color: Colors.purple,),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

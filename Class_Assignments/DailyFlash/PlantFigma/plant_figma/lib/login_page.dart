import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPAge extends StatefulWidget {
  const LoginPAge({super.key});

  @override
  State<LoginPAge> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPAge> {
  final _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Text(
              "Get Started >",
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 24)),
            ),
            TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)))),
          ElevatedButton(onPressed: (){
            
          }, child: child)
                      
          ],
        ),
      ),
    );
  }
}

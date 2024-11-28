import 'package:flutter/material.dart';
import 'package:food_app/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Create an account",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Let’s help you set up your account, it won’t take long.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              TextFormField(
                controller: nameEditingController,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter name";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                // initialValue: '1234',
                controller: passwordEditingController,
                // key: passwordKey,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 315,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 209, 101, 62),
                      foregroundColor: Colors.white),
                  onPressed: () {
                    bool loginValidated = _formKey.currentState!.validate();
                    if (loginValidated) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login Successful"),
                        ),
                      );
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login Failed"),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account? ",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

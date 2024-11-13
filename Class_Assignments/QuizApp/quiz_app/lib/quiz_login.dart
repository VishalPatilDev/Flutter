import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'quiz_app.dart';

class LoginQuiz extends StatefulWidget {
  const LoginQuiz({super.key});

  @override
  State<LoginQuiz> createState() => _LoginQuizState();
}

class _LoginQuizState extends State<LoginQuiz> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  final usernameTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool secureText = true;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 179, 215, 238),
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          "QuizApp",
          style: GoogleFonts.quicksand(
            textStyle:
                const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/blue-fluid-background-frame_53876-99019.jpg?size=626&ext=jpg&ga=GA1.1.1395880969.1709510400&semt=ais'))),
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // child: Image.network(
                    //   'https://www.riddle.com/imageservice/q_80,f_auto,c_fill,w_960,h_540/ed6cozjawexldjs7yedn',
                    //   width: 300,
                    // ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: usernameTextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        labelText: 'Enter Username',
                        labelStyle: GoogleFonts.quicksand(
                          textStyle: const TextStyle(),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter valid Username";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordTextEditingController,
                    obscureText: secureText,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                !secureText;
                              });
                            },
                            child: const Icon(Icons.remove_red_eye)),
                        labelText: 'Enter Password',
                        labelStyle: GoogleFonts.quicksand(
                          textStyle: const TextStyle(),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter valid Password";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        setState(() {
                          bool validated = _formkey.currentState!.validate();
                          if (validated) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const QuizApp()));
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Center(
                                        child: Text('Login Succesfull'))));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Center(
                                        child: Text('Login Failed!!!'))));
                          }
                        });
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

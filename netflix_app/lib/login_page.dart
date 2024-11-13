import 'package:flutter/material.dart';
import 'package:netflix_app/username.dart';

import 'learn_more.dart';
import 'sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        actions: const [
          Icon(
            Icons.account_circle,
            color: Colors.white54,
          ),
        ],
        backgroundColor: Colors.black,
        title: Image.asset('assets/images/logos_netflix.png'),
        // title: const Text(
        //   "Netflix",
        //   style: TextStyle(
        //       fontSize: 35,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.red,
        //       fontStyle: FontStyle.normal),
        // ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      prefixIconColor: Colors.white54,
                      filled: true,
                      fillColor: Colors.grey,
                      focusColor: Colors.blueGrey,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid)),
                      hintText: "Email or phone",
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      prefixIconColor: Colors.white54,
                      filled: true,
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Username(),
                        ),
                      );
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.white30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Row(
                    children: [
                      const Text("New to Netflix?",
                          style: TextStyle(color: Colors.white30)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white60,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: Text(
                    "Sign in is protected by Google reCAPTCHA to ensure you're not a bot.",
                    style: TextStyle(color: Colors.white30),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LearnMorePage(),
                        ));
                  },
                  child: Text(
                    "Learn More",
                    style: TextStyle(color: Colors.purple.shade400),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:demo_app/netflix.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.account_circle,
            color: Colors.white54,
          )
        ],
        backgroundColor: Colors.black,
        title: const Text(
          "Netflix",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontStyle: FontStyle.normal),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
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
                Padding(
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NetflixApp()));
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
                  padding: const EdgeInsets.only(left: 160),
                  child: Row(
                    children: [
                      Text("New to Netflix?",
                          style: TextStyle(color: Colors.white30)),
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

                const Text(
                  "Scroll to learn more",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
                // GestureDetector(
                //   onTap: () {},
                //   child: Text(
                //     "Learn More",
                //     style: TextStyle(color: Colors.purple.shade400),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

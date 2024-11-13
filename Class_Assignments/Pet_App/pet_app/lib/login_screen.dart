import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Login",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(245, 146, 69, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 32),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/Brandmark Logo.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(194, 195, 204, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 327,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromRGBO(250, 200, 162, 1))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(border: InputBorder.none),
                    initialValue: 'PetGuardian@gmail.com',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else {
                        null;
                      }
                    },
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(194, 195, 204, 1))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Label",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(194, 195, 204, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 327,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromRGBO(250, 200, 162, 1))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Color.fromRGBO(250, 200, 162, 1),
                      ),
                      border: InputBorder.none,
                    ),
                    initialValue: '***',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else {
                        null;
                      }
                    },
                    obscureText: true,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(194, 195, 204, 1))),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password?",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Color.fromRGBO(31, 32, 41, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                Text(
                  "Click Here",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Color.fromRGBO(31, 32, 41, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: 35,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(245, 146, 69, 1)),
                  onPressed: () {
                    bool loginValidated = _formKey.currentState!.validate();
                    if (loginValidated) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Login Successfully!"),
                        ),
                      );
                      Navigator.pushNamed(context, '/dashboard_screen');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login Failed!")));
                    }
                  },
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 327,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(245, 146, 69, 1))),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: 35,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(245, 146, 69, 1)),
                  onPressed: () {},
                  child: Text(
                    "Login With Email",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: 35,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(245, 146, 69, 1)),
                  onPressed: () {},
                  child: Text(
                    "Login With Facebook",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 327,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By continue you agree to our Terms & Privacy Policy",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(31, 32, 41, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login_screen');
                },
                child: Image.asset('assets/images/Group 12.png')),
            const SizedBox(
              height: 20,
            ),
            Text(
              "PetGuardian",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 32),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\"Your Pets' Lifelong Protector\"",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

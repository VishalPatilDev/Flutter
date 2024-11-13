import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp4/quiz_login.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/blue-fluid-background-frame_53876-99019.jpg?size=626&ext=jpg&ga=GA1.1.1395880969.1709510400&semt=ais'))),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 270,
              ),
              Text(
                "Click on Start button ",
                style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w400
                        // color: Colors.white,
                        )),
              ),
              Text(
                "To Start the Quiz",
                style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                  fontSize: 20,
                )),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 50,
                width: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginQuiz()));
                  },
                  child: Text("Start",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500))),
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: SizedBox(
      //   height: 60,
      //   width: 100,
      //   child: FloatingActionButton(
      //     backgroundColor: Colors.blue,
      //     foregroundColor: Colors.white,
      //     shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(12))),
      //     onPressed: () {
      //       Navigator.of(context)
      //           .push(MaterialPageRoute(builder: (context) => LoginQuiz()));
      //     },
      //     child: Text("Start",
      //         style: GoogleFonts.quicksand(
      //             textStyle:
      //                 TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      //   ),
    );
  }
}

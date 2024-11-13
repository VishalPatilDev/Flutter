import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() {
    return _QuizApp();
  }
}

class AllQuestions {}

class _QuizApp extends State<QuizApp> {
  List allQuestions = [
    {
      "question":
          "Who developed the Flutter Framework and continues to maintain it today?",
      "answers": ["Facebook", "Microsoft", "Google", "Oracle"],
      "correctAnswer": 2,
    },
    {
      "question":
          "Which programming language is used to build Flutter applications?",
      "answers": ["Kotlin", "Java", "Go", "Dart"],
      "correctAnswer": 3,
    },
    {
      "question": "How many types of widgets are there in Flutter?",
      "answers": ["4", "2", "6", "8+"],
      "correctAnswer": 1,
    },
    {
      "question": "A sequence of asynchronous Flutter events is known as a:",
      "answers": ["Stream", "Flow", "Current", "Series"],
      "correctAnswer": 0,
    },
    {
      "question":
          "Access to a cloud database through Flutter is available through which service?",
      "answers": ["SQLite", "Firebase Database", "NOSQL", "MYSQL"],
      "correctAnswer": 1,
    },
    {
      "question":
          "What element is used as an identifier for components when programming in Flutter?",
      "answers": ["Keys", "Widgets", "Elements", "Serial"],
      "correctAnswer": 0,
    },
    {
      "question":
          " Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?",
      "answers": ["main()", "container()", "runApp()", "root()"],
      "correctAnswer": 0,
    },
    {
      "question":
          "What is the key configuration file used when building a Flutter project?",
      "answers": ["pubspec.yaml", "pubspec.xml", "config.html", "root.xml"],
      "correctAnswer": 0,
    },
    {
      "question":
          " Which component allows us to specify the distance between widgets on the screen?",
      "answers": ["SafeArea", "table", "SizedBox", "AppBar"],
      "correctAnswer": 2,
    },
    {
      "question":
          "What language is Flutter's rendering engine primarily written in?",
      "answers": ["Kotlin", "C++", "Dart", "Java"],
      "correctAnswer": 1,
    }
  ];

  bool questionScreen = true;
  int queIndex = 0;
  int currentOp = -1;
  int correctAns = 0;

  MaterialStatePropertyAll<Color?> checkAns(int checkIndex) {
    if (currentOp != -1) {
      if (checkIndex == (allQuestions[queIndex]['correctAnswer'])) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (currentOp == checkIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (currentOp != -1) {
      if (currentOp == allQuestions[queIndex]['correctAnswer']) {
        correctAns++;
      }
      currentOp = -1;
      queIndex++;
    }

    if (allQuestions.length == queIndex) {
      setState(() {
        questionScreen = false;
      });
    }
  }

  Scaffold appScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white70,
          centerTitle: true,
          title: Text(
            "Quiz App",
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/blue-fluid-background-frame_53876-99019.jpg?size=626&ext=jpg&ga=GA1.1.1395880969.1709510400&semt=ais')),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Text(
                  "Question ${queIndex + 1}/${allQuestions.length}",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Text(
                    "${queIndex + 1} : ${allQuestions[queIndex]['question']}",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (currentOp == -1) {
                      setState(() {
                        currentOp = 0;
                      });
                    }
                  },
                  style: ButtonStyle(
                    fixedSize: const MaterialStatePropertyAll(Size(240, 50)),
                    backgroundColor: checkAns(0),
                  ),
                  child: Text(
                    "${allQuestions[queIndex]["answers"][0]}",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (currentOp == -1) {
                      setState(() {
                        currentOp = 1;
                      });
                    }
                  },
                  style: ButtonStyle(
                    fixedSize: const MaterialStatePropertyAll(Size(240, 50)),
                    backgroundColor: checkAns(1),
                  ),
                  child: Text(
                    "${allQuestions[queIndex]["answers"][1]}",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (currentOp == -1) {
                      setState(() {
                        currentOp = 2;
                      });
                    }
                  },
                  style: ButtonStyle(
                    fixedSize: const MaterialStatePropertyAll(Size(240, 50)),
                    backgroundColor: checkAns(2),
                  ),
                  child: Text(
                    "${allQuestions[queIndex]["answers"][2]}",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (currentOp == -1) {
                      setState(() {
                        currentOp = 3;
                      });
                    }
                  },
                  style: ButtonStyle(
                    fixedSize: const MaterialStatePropertyAll(Size(240, 50)),
                    backgroundColor: checkAns(3),
                  ),
                  child: Text(
                    "${allQuestions[queIndex]["answers"][3]}",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              validateCurrentPage();
            });
          },
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: const Icon(
            Icons.arrow_forward_rounded,
            size: 30,
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.white70,
          title: Text(
            "QuizApp",
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://img.freepik.com/premium-vector/festive-appealing-confetti-celebration-stars-bright-confetti-white-background-good-looking-festive-overlay-template-vertical-vector-background_174187-6215.jpg'))),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 240,
                ),
                Text(
                  "Congratulations ! ",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "You have completed the quiz!",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Your Score is : $correctAns/${allQuestions.length}",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Image.asset(
                //   height: 300,
                //   width: 300,
                //   "https://img.freepik.com/free-vector/birthday-cap-with-confetti-serpentine-explosion_1017-17924.jpg?size=338&ext=jpg&ga=GA1.1.1395880969.1709596800&semt=ais",
                // ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    queIndex = 0;
                    questionScreen = true;
                    correctAns = 0;
                    currentOp = -1;
                    setState(() {});
                  },
                  style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(140, 50)),
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: Text(
                    "Restart",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return appScreen();
  }
}

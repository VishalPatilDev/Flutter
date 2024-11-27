import 'package:flutter/material.dart';

void main() {
  runApp(MyWebsite());
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/projects': (context) => ProjectsPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vishal Patil Portfolio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hi, I am Vishal Patil!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'An Electronics and Telecommunication graduate specializing in software development, '
                'Flutter applications, and innovative solutions like the "Sign Glove for Impaired People."',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/projects');
                },
                child: Text('View My Projects'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Text('Contact Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Sign Glove for Impaired People'),
            subtitle: Text(
                'A wearable device to help speech-impaired individuals communicate via mobile devices.'),
          ),
          Divider(),
          ListTile(
            title: Text('Flutter Quiz App'),
            subtitle: Text(
                'An interactive quiz application with login and dynamic questions.'),
          ),
        ],
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Email: vishalpatil.dev2@gmail.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'GitHub: https://github.com/VishalPatilDev',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'LinkedIn: https://linkedin.com/in/vishalpatil',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

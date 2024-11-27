import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this package for clickable URLs

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
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
        ),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.blueAccent.shade100,
              child: Column(
                children: [
                  Text(
                    'Hi, I am Vishal Patil!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'An Electronics and Telecommunication graduate specializing in software development, '
                    'Flutter applications, and innovative solutions like the "Sign Glove for Impaired People."',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/projects');
                    },
                    icon: Icon(Icons.folder_open),
                    label: Text('View My Projects'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    icon: Icon(Icons.mail_outline),
                    label: Text('Contact Me'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
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
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              title: Text(
                'Sign Glove for Impaired People',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  'A wearable device to help speech-impaired individuals communicate via mobile devices.'),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 5,
            child: ListTile(
              title: Text(
                'Flutter Quiz App',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  'An interactive quiz application with login and dynamic questions.'),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  // Function to launch URLs
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('Email'),
                subtitle: InkWell(
                  onTap: () => _launchURL('mailto:vishalpatil.dev2@gmail.com'),
                  child: Text(
                    'vishalpatil.dev2@gmail.com',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.link, color: Colors.blue),
                title: Text('GitHub'),
                subtitle: InkWell(
                  onTap: () => _launchURL('https://github.com/VishalPatilDev'),
                  child: Text(
                    'https://github.com/VishalPatilDev',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.link, color: Colors.blue),
                title: Text('LinkedIn'),
                subtitle: InkWell(
                  onTap: () => _launchURL(
                      'https://www.linkedin.com/in/vishalpatildevloper/'),
                  child: Text(
                    'https://linkedin.com/in/vishalpatildevloper',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

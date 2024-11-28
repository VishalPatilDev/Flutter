import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyWebsite());
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.teal.shade300, Colors.teal.shade600],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 100),
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          'https://next-images.123rf.com/index/_next/image/?url=https://assets-cdn.123rf.com/index/static/assets/top-section-bg.jpeg&w=3840&q=75'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Vishal Patil',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Flutter Developer | Electronics Engineer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SectionTitle(title: 'About Me'),
                  Text(
                    'I am an Electronics and Telecommunication graduate with expertise in software development, Flutter applications, and innovative projects like the "Sign Glove for Impaired People."',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  SectionTitle(title: 'Explore More'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomeButton(
                        label: 'Projects',
                        icon: Icons.folder_open,
                        onTap: () {
                          Navigator.pushNamed(context, '/projects');
                        },
                      ),
                      HomeButton(
                        label: 'Contact',
                        icon: Icons.mail_outline,
                        onTap: () {
                          Navigator.pushNamed(context, '/contact');
                        },
                      ),
                    ],
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

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const HomeButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.teal.shade100,
            child: Icon(icon, size: 30, color: Colors.teal),
          ),
          SizedBox(height: 8),
          Text(label),
        ],
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
          ProjectCard(
            title: 'Sign Glove for Impaired People',
            description:
                'A wearable device to help speech-impaired individuals communicate via mobile devices.',
          ),
          ProjectCard(
            title: 'Flutter Quiz App',
            description:
                'An interactive quiz application with login and dynamic questions.',
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContactTile(
              icon: Icons.email,
              label: 'Email',
              value: 'vishalpatil.dev2@gmail.com',
              url: 'mailto:vishalpatil.dev2@gmail.com',
            ),
            ContactTile(
              icon: Icons.link,
              label: 'GitHub',
              value: 'github.com/VishalPatilDev',
              url: 'https://github.com/VishalPatilDev',
            ),
            ContactTile(
              icon: Icons.link,
              label: 'LinkedIn',
              value: 'linkedin.com/in/vishalpatildev',
              url: 'https://linkedin.com/in/vishalpatildev',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String url;

  const ContactTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(label),
      subtitle: InkWell(
        onTap: () => launchUrl(Uri.parse(url)),
        child: Text(
          value,
          style: TextStyle(
            color: Colors.teal,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

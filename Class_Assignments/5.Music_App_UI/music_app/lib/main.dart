import 'package:flutter/material.dart';
import 'package:music_app/gallery_page.dart';
import 'package:music_app/player_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {"/galley_page": (context) => const GalleryPage()},
        debugShowCheckedModeBanner: false,
        home: const PlayerScreen());
  }
}

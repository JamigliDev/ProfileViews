import 'package:flutter/material.dart';
import 'package:profile_views/pages/profileViewDribble1/profileDribbble1.dart';
import 'package:profile_views/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Views',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(primary),
          scaffoldBackgroundColor: const Color(bgColor)),
      home: const ProfileDribbble1(),
    );
  }
}

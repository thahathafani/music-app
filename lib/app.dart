import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/colors.dart';
import 'package:spotify_clone/features/home/home.dart';


class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: HomeScreen(),
    );
  }
}

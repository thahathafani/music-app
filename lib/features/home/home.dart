import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/colors.dart';
import 'package:spotify_clone/core/constants/text_style.dart';
import 'package:spotify_clone/core/widgets/custom_appbar.dart';
import 'package:spotify_clone/core/widgets/song_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppbar(title: "Home"),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text('Recently Played', style: AppTextStyles.heading1,),
          SizedBox(height: 16.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                  (index) => Padding(padding: const EdgeInsets.only(right: 16),
                  child: SongCard(
                      imageUrl: 'https://via.placeholder.com/150',
                      title: 'Song Title $index', artist: 'Khan'),)
              ),
            ),
          )
        ],
      ),
    );
  }
}

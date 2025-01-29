import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/colors.dart';
import 'package:spotify_clone/core/constants/text_style.dart';

class SongCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String artist;

  const SongCard({
    required this.imageUrl,
    required this.title,
    required this.artist,
    super.key,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(title, style: AppTextStyles.bodyText),
        Text(artist, style: AppTextStyles.bodyText.copyWith(color: AppColors.textSecondary))
      ],
    );
  }
}

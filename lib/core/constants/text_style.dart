import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/core/constants/colors.dart';

class AppTextStyles {
  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static TextStyle bodyText = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.textSecondary,
  );
}
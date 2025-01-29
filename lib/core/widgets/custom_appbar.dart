import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/colors.dart';
import 'package:spotify_clone/core/constants/text_style.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget>? actions;

  const CustomAppbar({required this.title, this.actions, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.heading1),
      backgroundColor: AppColors.background,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);


}

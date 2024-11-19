import 'package:flutter/material.dart';
import 'package:flutter_spotify/core/config/theme/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const BasicAppButton({super.key, required this.onPressed, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.lightBackground,
          minimumSize: Size.fromHeight(height ?? 80),
        ),
        child: Text(
      title
    ));
  }
}

import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6D56FF);
  static const Color background = Color(0xFFFFFFFF);
  static const Color text = Color(0xFF1C1B1F);
  static const Color textGray = Color(0xFF6B7280);
  static const Color textLight = Color(0xFFA09CAB);
  static const Color border = Color(0xFFE5E7EB);
}

class AppStyles {
  static const TextStyle title = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textGray,
  );

  static const TextStyle tabLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bottomNavLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );
}
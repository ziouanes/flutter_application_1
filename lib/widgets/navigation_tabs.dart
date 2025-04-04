import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';

class NavigationTabs extends StatelessWidget {
  const NavigationTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          _TabButton(
            label: 'Questions',
            onTap: () {},
          ),
          const SizedBox(width: 10),
          _TabButton(
            label: 'Expériences',
            onTap: () {},
          ),
          const SizedBox(width: 10),
          _TabButton(
            label: 'Discussions',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _TabButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Text(
          label,
          style: GoogleFonts.inter(
            color: AppColors.gray500,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
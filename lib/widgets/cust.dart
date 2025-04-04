import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Color(0xFFF3F4F6),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_outlined, "Accueil", true),
          _buildNavItem(Icons.explore_outlined, "Decouverte", false),
          _buildNavItem(Icons.calendar_today_outlined, "Réservation", false),
          _buildNavItem(Icons.compare_arrows_outlined, "Comparateur", false),
          _buildNavItem(Icons.people_outline, "Communaute", false),
          _buildNavItem(Icons.person_outline, "Profil", false),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 24,
          color: isActive ? const Color(0xFF6D56FF) : const Color(0xFFA09CAB),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: isActive ? const Color(0xFF6D56FF) : const Color(0xFFA09CAB),
          ),
        ),
      ],
    );
  }
}
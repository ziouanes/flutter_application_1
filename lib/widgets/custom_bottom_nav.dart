import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey.shade200)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                icon: Icons.home_outlined,
                label: 'Accueil',
                onTap: () {},
              ),
              _NavItem(
                icon: Icons.explore_outlined,
                label: 'Decouverte',
                onTap: () {},
              ),
              _NavItem(
                icon: Icons.calendar_today_outlined,
                label: 'Réservation',
                onTap: () {},
              ),
              _NavItem(
                icon: Icons.compare_arrows,
                label: 'Comparateur',
                onTap: () {},
              ),
              _NavItem(
                icon: Icons.people_outline,
                label: 'Communaute',
                onTap: () {},
                isActive: true,
              ),
              _NavItem(
                icon: Icons.person_outline,
                label: 'Profil',
                onTap: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: 96,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.zinc900,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  const _NavItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24,
            color: isActive ? AppColors.primary : AppColors.zinc400,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: isActive ? AppColors.primary : AppColors.zinc400,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavAlt extends StatelessWidget {
  const CustomBottomNavAlt({Key? key}) : super(key: key);

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

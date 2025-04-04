import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '9:41 AM',
            style: GoogleFonts.inter(
              color: AppColors.gray500,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              CustomPaint(
                size: const Size(11, 8),
                painter: SignalIconPainter(),
              ),
              const SizedBox(width: 8),
              CustomPaint(
                size: const Size(26, 8),
                painter: WifiIconPainter(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SignalIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Implement signal icon painting logic
    // This is a simplified version - implement full SVG path for production
    canvas.drawRect(
      Rect.fromLTWH(0, size.height * 0.6, size.width * 0.2, size.height * 0.4),
      paint,
    );
    // Add remaining signal bars
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class WifiIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Implement wifi icon painting logic
    // This is a simplified version - implement full SVG path for production
    final path = Path()
      ..moveTo(size.width * 0.5, size.height)
      ..arcTo(
        Rect.fromCircle(
          center: Offset(size.width * 0.5, size.height * 0.5),
          radius: size.width * 0.4,
        ),
        0,
        3.14,
        false,
      );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
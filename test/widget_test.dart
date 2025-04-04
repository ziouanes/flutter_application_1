import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 640;

    return Container(
      // Use isSmallScreen boolean to conditionally render your content
      child: isSmallScreen ? _buildMobileLayout() : _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Container(
      // Add your mobile layout widgets here
    );
  }

  Widget _buildDesktopLayout() {
    return Container(
      // Add your desktop layout widgets here
    );
  }
}

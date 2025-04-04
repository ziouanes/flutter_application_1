import 'package:flutter/material.dart';
import '../utils/constants.dart';

class PostCard extends StatelessWidget {
  final String userName;
  final String timeAgo;
  final String content;
  final String? imageUrl;
  final int likes;
  final int comments;

  const PostCard({
    Key? key,
    required this.userName,
    required this.timeAgo,
    required this.content,
    this.imageUrl,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(userName, style: AppStyles.title),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFDCFCE7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.check,
                                size: 12,
                                color: Color(0xFF166534),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Vérifié',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF166534),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(timeAgo, style: AppStyles.subtitle),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              content,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.text,
                height: 1.4,
              ),
            ),
          ),
          if (imageUrl != null)
            Container(
              margin: const EdgeInsets.only(top: 16),
              height: 204,
              width: double.infinity,
              child: Image.network(imageUrl!, fit: BoxFit.cover),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                _buildInteractionButton(
                  icon: Icons.favorite_border,
                  count: likes,
                ),
                const SizedBox(width: 16),
                _buildInteractionButton(
                  icon: Icons.chat_bubble_outline,
                  count: comments,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInteractionButton({required IconData icon, required int count}) {
    return Row(
      children: [
        Icon(icon, color: AppColors.textGray, size: 20),
        const SizedBox(width: 4),
        Text(
          count.toString(),
          style: TextStyle(color: AppColors.textGray, fontSize: 14),
        ),
      ],
    );
  }
}

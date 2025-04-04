import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/custom_bottom_nav.dart';

class ExperienceShareScreen extends StatelessWidget {
  const ExperienceShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF4B5563)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Partage d'expériences",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xFF4B5563)),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFF3F4F6),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabButton("Questions"),
                _buildTabButton("Expériences"),
                _buildTabButton("Discussions"),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                _buildFilterChip("Tout"),
                _buildFilterChip("Plage"),
                _buildFilterChip("Montagne"),
                _buildFilterChip("Ville"),
                _buildFilterChip("Culture"),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                PostCard(
                  username: "Simo Dubois",
                  timeAgo: "Il y a 2 heures",
                  title: "Paradis trouvé aux Nador",
                  description: "Nador, avec ses plages de sable fin et ses couchers de soleil spectaculaires, offre une expérience mémorable.",
                  imageUrl: "https://cdn.builder.io/api/v1/image/assets/TEMP/ed77f34ecbdb59d447afd7df60c1b93eda3b3be4",
                  likes: "234",
                  comments: "45",
                ),
                SizedBox(height: 16),
                PostCard(
                  username: "Redone Martin",
                  timeAgo: "Il y a 5 heures",
                  title: "Randonnée dans Toubkal",
                  description: "L'ascension du Mont Toubkal en été offre des vues spectaculaires et un climat agréable.",
                  imageUrl: "https://cdn.builder.io/api/v1/image/assets/TEMP/f74cb61d038bccb610cd9980f14099105e827cdd",
                  likes: "189",
                  comments: "32",
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 56,
        height: 56,
        margin: const EdgeInsets.only(bottom: 70),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF6366F1),
          child: const Icon(Icons.add, size: 32),
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }

  Widget _buildTabButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF6B7280),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF374151),
          ),
        ),
        backgroundColor: const Color(0xFFF3F4F6),
        onSelected: (bool selected) {},
        selected: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
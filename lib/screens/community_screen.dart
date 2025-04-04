import 'package:flutter/material.dart';
import '../widgets/status_bar.dart';
import '../widgets/search_bar.dart';
import '../widgets/post_card2.dart';
import '../widgets/custom_bottom_nav.dart';
import '../utils/constants.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedNavIndex = 3;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const StatusBar(),
            const SearchBar(),
            Container(
              color: Color(0xFFFAFAFA),
              child: TabBar(
                controller: _tabController,
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.textGray,
                indicatorColor: AppColors.primary,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: AppStyles.tabLabel,
                tabs: const [
                  Tab(text: 'Questions'),
                  Tab(text: 'Expériences'),
                  Tab(text: 'Discussions'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildQuestionsList(),
                  _buildExperiencesList(),
                  _buildDiscussionsList(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, size: 32),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedNavIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedNavIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildQuestionsList() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        PostCard(
          userName: 'Said Elhwate',
          timeAgo: 'Il y a 2 heures',
          content: 'cette montagne offre un défi physique considérable, mais les vues panoramiques en valent vraiment la peine.',
          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/09e002a4a8cb66ace5fe0e0b81d370ac69229dfe',
          likes: 24,
          comments: 8,
        ),
        // Add more posts as needed
      ],
    );
  }

  Widget _buildExperiencesList() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        // Add experience posts
      ],
    );
  }

  Widget _buildDiscussionsList() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        // Add discussion posts
      ],
    );
  }
}
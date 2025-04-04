import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/status_bar.dart';
import '../widgets/navigation_tabs.dart';
import '../widgets/question_card.dart';
import '../widgets/answer_card.dart';
import '../widgets/custom_bottom_nav.dart';
import '../theme/colors.dart';

class DiscussionScreen extends StatelessWidget {
  const DiscussionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const StatusBar(),
            const NavigationTabs(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const QuestionCard(),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey.shade200),
                        ),
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                        ),
                        value: 'popular',
                        items: [
                          DropdownMenuItem(
                            value: 'popular',
                            child: Text(
                              'Plus populaires',
                              style: GoogleFonts.inter(
                                color: AppColors.gray700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                    const AnswerCard(
                      username: 'Said Alaa',
                      timeAgo: 'Il y a 1 heure',
                      content:
                          'Je recommande la technique Pomodoro : 25 minutes de travail concentré suivies de 5 minutes de pause. Cela m\'aide énormément à rester productive tout au long de la journée.',
                      votes: 24,
                    ),
                    const AnswerCard(
                      username: 'Amine Fikri',
                      timeAgo: 'Il y a 45 minutes',
                      content:
                          'La planification est essentielle. Je consacre 15 minutes chaque matin pour organiser ma journée et définir mes priorités. Cela me permet d\'être plus efficace et de mieux gérer mon temps.',
                      votes: 18,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey.shade200)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.indigo500,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 48,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Répondre à la discussion',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.people_outline,
                        color: AppColors.gray500,
                        size: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '28 actifs',
                        style: GoogleFonts.inter(
                          color: AppColors.gray500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CustomBottomNav(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widget/article_recommendations.dart';
import '../widget/home_app_bar.dart';
import '../widget/home_carousel_slider.dart';
import '../widget/menu_bar.dart';
import '../widget/welcome_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('EEEE, MMMM d\'th\'').format(DateTime.now());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              WelcomeText(formattedDate: formattedDate),
              const SizedBox(
                height: 20.0,
              ),
              const HomeMenu(),
              const SizedBox(
                height: 30.0,
              ),
              const HomeCarouselSlider(),
              const SizedBox(
                height: 30.0,
              ),
              const ArticleRecommendations(),
            ],
          ),
        ),
      ),
    );
  }
}

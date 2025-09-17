import 'package:elssa/features/widgets/location_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/carousel_image.dart';
import '../../../app_bottom_nav.dart';
import '../../../core/footer_watermark.dart';
import '../../../core/section_tile.dart';
import '../../../global_variables.dart';
import '../../services/widgets/cleaning_services_carousel.dart';
import '../../services/widgets/popular_services_carousel.dart';
import '../../services/widgets/safety_measures_section.dart';
import '../../services/widgets/service_category_grid.dart';
import '../../services/widgets/trust_badges_row.dart';
import '../../services/widgets/why_choose_us.dart';

class HomeScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const HomeScreen());

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onNavBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Tapped on item $index')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFE),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFFDFEFE),
        toolbarHeight: 80,
        surfaceTintColor: Colors.transparent,
        title: LocationBar(),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search , color: Colors.grey , size: 11,),)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarouselImage(),
              const SizedBox(height: 24),
              const ServiceCategoryGrid(),
              const SizedBox(height: 24),
              const SectionTitle(title: 'Popular Services'),
              const SizedBox(height: 12),
              const PopularServicesCarousel(),
              const SizedBox(height: 24),
              const SectionTitle(title: 'Cleaning Services'),
              const SizedBox(height: 12),
              SafeArea(child: const CleaningServicesCarousel()),
              const SizedBox(height: 24),
              const TrustBadgesRow(),
              const SizedBox(height: 32),
              const SectionTitle(title: 'Why Choose Us', icon: Icons.shield),
              const WhyChooseUsSection(),
              const SizedBox(height: 32),
              const SafetyMeasuresSection(),
              const FooterWatermark(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: _currentIndex,
        onTap: _onNavBarTap,
      ),
    );
  }
}
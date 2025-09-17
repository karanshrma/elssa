import 'package:flutter/material.dart';

import '../../core/app_constants.dart';
import 'hero_menu_item.dart';
class HeroBanner extends StatelessWidget {
  final String imageUrl;

  const HeroBanner({
    super.key,
    this.imageUrl = 'https://picsum.photos/seed/1/800/400',
  });

  static const List<Map<String, dynamic>> _menuItems = [
    {'icon': Icons.home_repair_service, 'label': 'Renovation'},
    {'icon': Icons.handyman, 'label': 'Handyman'},
    {'icon': Icons.local_shipping, 'label': 'Home shifting'},
    {'icon': Icons.eco, 'label': 'Gardening'},
    {'icon': Icons.cleaning_services, 'label': 'Declutter'},
    {'icon': Icons.format_paint, 'label': 'Painting'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: const [0.0, 0.7],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 16,
                bottom: 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _menuItems
                      .map((item) => HeroMenuItem(
                    icon: item['icon'],
                    label: item['label'],
                  ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
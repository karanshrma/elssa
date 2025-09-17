import 'package:flutter/material.dart';
import '../../../core/app_constants.dart';
import 'cleaning_service_card.dart';

class CleaningServicesCarousel extends StatelessWidget {
  const CleaningServicesCarousel({super.key});

  static const List<Map<String, String>> _services = [
    {
      'name': 'Kitchen\nCleaning',
      'image': 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=300&fit=crop'
    },
    {
      'name': 'Sofa Cleaning',
      'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400&h=300&fit=crop'
    },
    {
      'name': 'Full Home\nCleaning',
      'image': 'https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?w=400&h=300&fit=crop'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding),
        itemCount: _services.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final service = _services[index];
          return CleaningServiceCard(
            name: service['name']!,
            imageUrl: service['image']!,
          );
        },
      ),
    );
  }
}
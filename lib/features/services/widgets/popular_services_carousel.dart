import 'package:elssa/features/services/widgets/popular_service_card.dart';
import 'package:flutter/material.dart';

import '../../../core/app_constants.dart';
class PopularServicesCarousel extends StatelessWidget {
  const PopularServicesCarousel({super.key});



  static const List<Map<String, String>> _services = [
    {
      'name': 'Kitchen Cleaning',
      'image': 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=300&fit=crop&ixlib=rb-4.0.3'
    },
    {
      'name': 'Sofa Cleaning',
      'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400&h=300&fit=crop&ixlib=rb-4.0.3'
    },
    {
      'name': 'Full Home',
      'image': 'https://t3.ftcdn.net/jpg/04/21/55/50/360_F_421555010_VDODYiU9sAvvhxWKYgnEp0YahXoPLSCg.jpg'
    },
    {
      'name': 'Bathroom',
      'image': 'https://media.istockphoto.com/id/153187215/photo/woman-doing-chores-cleaning-bathroom-at-home.jpg?s=612x612&w=0&k=20&c=gSkveUjgYJVhdZkQFvnJszSLgMxQW4G0lDu-b-04i_Y='
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding),
        itemCount: _services.length,
        separatorBuilder: (context, index) => const SizedBox(width: AppConstants.cardSpacing),
        itemBuilder: (context, index) {
          final service = _services[index];
          return PopularServiceCard(
            name: service['name']!,
            imageUrl: service['image']!,
          );
        },
      ),
    );
  }
}

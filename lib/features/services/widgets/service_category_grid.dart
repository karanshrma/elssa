import 'package:elssa/features/services/widgets/service_category_tile.dart';
import 'package:flutter/material.dart';
import '../../../core/app_constants.dart';

class ServiceCategoryGrid extends StatelessWidget {
  const ServiceCategoryGrid({super.key});

  static const List<Map<String, dynamic>> _categories = [
    {'icon': Icons.home_repair_service_outlined, 'label': 'Renovation'},
    {'icon': Icons.handyman_outlined, 'label': 'Handyman'},
    {'icon': Icons.local_shipping_outlined, 'label': 'Home shifting'},
    {'icon': Icons.eco_outlined, 'label': 'Gardening'},
    {'icon': Icons.cleaning_services_outlined, 'label': 'Declutter'},
    {'icon': Icons.format_paint_outlined, 'label': 'Painting'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          final category = _categories[index];
          return ServiceCategoryTile(
            icon: category['icon'],
            label: category['label'],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/app_constants.dart';
import 'info_card.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  static const List<Map<String, dynamic>> _items = [
    {
      'icon': Icons.star,
      'color': Colors.amber,
      'title': 'Quality Assurance',
      'subtitle': 'Your satisfaction is guaranteed',
    },
    {
      'icon': Icons.price_change,
      'color': Colors.red,
      'title': 'Fixed Prices',
      'subtitle': 'No hidden costs, all the prices are known and fixed before booking',
    },
    {
      'icon': Icons.touch_app,
      'color': Colors.orange,
      'title': 'Hassle free',
      'subtitle': 'Convenient, time saving and secure',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.horizontalPadding),
      child: Column(
        children: _items
            .map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: InfoCard(
            icon: item['icon'],
            iconColor: item['color'],
            title: item['title'],
            subtitle: item['subtitle'],
          ),
        ))
            .toList(),
      ),
    );
  }
}
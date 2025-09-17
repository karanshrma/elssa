import 'package:elssa/features/services/widgets/safety_info_row.dart';
import 'package:flutter/material.dart';

import '../../../core/app_constants.dart';

class SafetyMeasuresSection extends StatelessWidget {
  const SafetyMeasuresSection({super.key});

  static const List<Map<String, String>> _measures = [
    {
      'icon': 'masks',
      'title': 'Usage of Masks, Gloves & Sanitisers',
      'description': 'We ensure safety by providing masks, gloves, and sanitisers to maintain hygiene at all times.',
    },
    {
      'icon': 'social_distance',
      'title': 'Low-contact Service Experience',
      'description': 'Our services are designed to minimise physical contact, ensuring a safe and convenient experience.',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.grey.shade800,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: const Text(
            'Best-in-Class Safety Measures',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          color: Colors.grey.shade100,
          padding: const EdgeInsets.all(AppConstants.horizontalPadding),
          child: Column(
            children: _measures
                .map((measure) => Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: SafetyInfoRow(
                icon: measure['icon'] == 'masks' ? Icons.masks : Icons.social_distance,
                title: measure['title']!,
                description: measure['description']!,
              ),
            ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
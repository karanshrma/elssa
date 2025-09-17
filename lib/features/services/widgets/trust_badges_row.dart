import 'package:flutter/material.dart';
import '../../../core/app_constants.dart';
import 'trust_badge.dart';

class TrustBadgesRow extends StatelessWidget {
  const TrustBadgesRow({super.key});

  static const List<Map<String, dynamic>> _badges = [
    {'icon': Icons.schedule, 'label': 'On\nDemand'},
    {'icon': Icons.verified_user, 'label': 'Verified\nPartners'},
    {'icon': Icons.sentiment_satisfied, 'label': 'Satisfaction Guar...'},
    {'icon': Icons.price_check, 'label': 'Upfront\nPricing'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding),
        itemCount: _badges.length,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final badge = _badges[index];
          return TrustBadge(
            icon: badge['icon'],
            label: badge['label'],
          );
        },
      ),
    );
  }
}
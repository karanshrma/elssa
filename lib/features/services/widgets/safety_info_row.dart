import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class SafetyInfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const SafetyInfoRow({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(child: Icon(icon, size: 48, color: Colors.grey.shade700)),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

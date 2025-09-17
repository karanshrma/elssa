
import 'package:flutter/material.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_constants.dart';

class CleaningServiceCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CleaningServiceCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$name tapped')),
        );
      },
      borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ✅ FIX: Clean container without conflicting constraints
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 120,
                height: 80,
                color: Colors.grey.shade100,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey.shade200,
                    child: const Icon(
                      Icons.image,
                      size: 32,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // ✅ FIX: Proper text container with intrinsic height
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12, // ✅ FIX: Increased font size for readability
                    height: 1.2, // ✅ FIX: Better line height
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
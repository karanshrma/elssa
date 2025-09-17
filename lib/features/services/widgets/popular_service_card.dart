import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_constants.dart';

class PopularServiceCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const PopularServiceCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$name tapped')));
      },
      borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: const BoxConstraints(maxHeight: 130),
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade100,
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey.shade200,
                  child: const Icon(Icons.image, size: 42, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Flexible(
              child: SizedBox(
                height: 42,
                child: Text(
                  name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    height: 1.0,
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

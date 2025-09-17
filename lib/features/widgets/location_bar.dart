import 'package:flutter/material.dart';

class LocationBar extends StatelessWidget {
  final String locationText;
  final VoidCallback? onSearchTap;

  const LocationBar({
    super.key,
    this.locationText = 'Inner Circle, Connaught Place, New Delhi',
    this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black87,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.black87,
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    locationText,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      height: 1.2,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 16),


          GestureDetector(
            onTap: onSearchTap ?? () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search tapped')),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
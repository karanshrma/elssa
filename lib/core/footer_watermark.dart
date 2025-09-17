import 'package:flutter/material.dart';

class FooterWatermark extends StatelessWidget {
  const FooterWatermark({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // keeps column tight
          children: [
            Text(
              'HASSLE FREE QUALITY SERVICE',
              style: TextStyle(
                color: Colors.grey.shade300,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center, // ensure alignment
            ),
            const SizedBox(height: 4),
            Text(
              'V 1.0',
              style: TextStyle(color: Colors.grey.shade300),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

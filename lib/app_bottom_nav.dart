import 'package:flutter/material.dart';

import 'core/app_colors.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  static const List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.card_giftcard, 'label': 'Rewards'},
    {'icon': Icons.receipt_long, 'label': 'My Orders'},
    {'icon': Icons.calendar_today, 'label': 'Bookings'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.background,
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      selectedFontSize: 12,
      items: _navItems
          .map((item) => BottomNavigationBarItem(
        icon: Icon(item['icon']),
        label: item['label'],
      ))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../widgets/custom_text.dart';
import 'animated_count_text.dart';

class DashboardItemCard extends StatelessWidget {
  final String title;
  final String count;
  final IconData icon;
  final VoidCallback? onTap;
  final bool isTablet;
  final List<Color> gradientColors;

  const DashboardItemCard({
    super.key,
    required this.title,
    required this.count,
    required this.icon,
    this.onTap,
    required this.isTablet,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(2, 2),
            )
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: isTablet ? 30 : 24, color: Colors.white),
            const SizedBox(height: 10),
            AnimatedCountText(
              count: count,
              style: TextStyle(
                fontSize: isTablet ? 22 : 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            CustomText(
              title,
              fontSize: isTablet ? 14 : 12,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

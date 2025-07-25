import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/util.dart';
import '../../../../widgets/custom_text.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveFactor = Responsive.getDashboardResponsiveText(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Profile Image
        InkWell(
          onTap: () => context.pushNamed("my-profile"),
          child: CircleAvatar(
            radius: 22 * responsiveFactor,
            backgroundImage: const NetworkImage(
              'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=60',
            ),
          ),
        ),

        const SizedBox(width: 12),

        // Name & Designation
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              'Person Name',
              fontWeight: FontWeight.w700,
              fontSize: 14 * responsiveFactor,
            ),
            CustomText(
              'Description',
              fontWeight: FontWeight.w600,
              fontSize: 12 * responsiveFactor,
              color: AppColors.warning,
            ),
          ],
        ),

        const Spacer(),

        // Search Icon Button
        Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: Util.applyOpacity(AppColors.eventCyan, 0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.search, size: 20, color: AppColors.primary),
            onPressed: () {
              // TODO: Navigate to search page
            },
          ),
        ),

        // Notification Icon Button
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Util.applyOpacity(AppColors.eventCyan, 0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.notifications_none_rounded, size: 22, color: AppColors.primary),
            onPressed: () {
              // TODO: Open notifications
            },
          ),
        ),
      ],
    );
  }
}

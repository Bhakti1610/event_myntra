import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../widgets/custom_text.dart';
import '../widgets/dashboard_app_bar.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final crossAxisCount = isTablet ? 3 : 2;
    final cardHeight = isTablet ? 120.0 : 100.0;

    final dashboardItems = [
      'Today Registered',
      "Today's Reg Event",
      "Today's Payment",
      "Today's Ticket Sales",
      "Today's Sendoff",
      "Total Vendor",
    ];

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: AppTheme.getColor(context).surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DashboardAppBar(),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(bottom: 80),
                  itemCount: dashboardItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: isTablet ? 1.3 : 1,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: cardHeight,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 4,
                            offset: const Offset(2, 2),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Center(
                        child: CustomText(
                          dashboardItems[index],
                          fontSize: isTablet ? 16 : 14,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

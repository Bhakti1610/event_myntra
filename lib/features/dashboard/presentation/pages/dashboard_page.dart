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
              const SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(bottom: 60),
                  itemCount: dashboardItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: isTablet ? 1.5 : 1.3, // tighter shape
                  ),
                  itemBuilder: (context, index) {
                    return Material(
                      color: Colors.white,
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          // TODO: Add navigation or tap action
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 8,
                          ),
                          child: Center(
                            child: CustomText(
                              dashboardItems[index],
                              fontSize: isTablet ? 13 : 12,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
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

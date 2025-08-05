import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/responsive.dart';
import '../widgets/dashboard_app_bar.dart';
import '../widgets/dashboard_item_card.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final crossAxisCount = isTablet ? 3 : 2;

    final dashboardData = [
      {
        "title": "Today Registered",
        "count": "12",
        "icon": Icons.person_add,
        "colors": [Colors.blue, Colors.blueAccent],
      },
      {
        "title": "Today's Reg Event",
        "count": "5",
        "icon": Icons.event,
        "colors": [Colors.purple, Colors.deepPurpleAccent],
      },
      {
        "title": "Today's Payment",
        "count": "₹8500",
        "icon": Icons.payments,
        "colors": [Colors.green, Colors.teal],
      },
      {
        "title": "Today's Ticket Sales",
        "count": "48",
        "icon": Icons.confirmation_number,
        "colors": [Colors.orange, Colors.deepOrange],
      },
      {
        "title": "Today's Sendoff",
        "count": "3",
        "icon": Icons.emoji_people,
        "colors": [Colors.indigo, Colors.indigoAccent],
      },
      {
        "title": "Total Vendor",
        "count": "22",
        "icon": Icons.store,
        "colors": [Colors.pink, Colors.redAccent],
      },
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
                  itemCount: dashboardData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: isTablet ? 1.5 : 1.3,
                  ),
                  itemBuilder: (context, index) {
                    final item = dashboardData[index];
                    return DashboardItemCard(
                      title: item['title'] as String,
                      count: item['count'] as String,
                      icon: item['icon'] as IconData,
                      gradientColors: item['colors'] as List<Color>,
                      isTablet: isTablet,
                      onTap: () {
                        // TODO: Add tap action
                      },
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

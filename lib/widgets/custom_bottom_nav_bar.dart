import 'package:flutter/material.dart';

import '../features/dashboard/presentation/widgets/fancy_bottom_nav_clipper.dart';

class MainBottomNavPage extends StatefulWidget {
  const MainBottomNavPage({super.key});

  @override
  State<MainBottomNavPage> createState() => _MainBottomNavPageState();
}

class _MainBottomNavPageState extends State<MainBottomNavPage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text("Dashboard")),
    Center(child: Text("Event")),
    Center(child: Text("Menu")),
    Center(child: Text("View Access")),
    Center(child: Text("Profile")),
  ];

  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      floatingActionButton: SizedBox(
        height: 64,
        width: 64,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 8,
          child: const Icon(Icons.menu_book, size: 28),
          shape: const CircleBorder(), // Ensures it's circular
        ),
      ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildFancyBottomAppBar(context),
    );
  }

  Widget _buildFancyBottomAppBar(BuildContext context) {
    return ClipPath(
      clipper: FancyBottomNavClipper(),
      child: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavItem(Icons.dashboard_outlined, "Dashboard", 0),
                    _buildNavItem(Icons.event, "Event", 1),
                  ],
                ),
              ),
              const SizedBox(width: 48), // Space for FAB
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavItem(Icons.lock_open, "Access", 3),
                    _buildNavItem(Icons.person_outline, "Profile", 4),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: isSelected
            ? BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        )
            : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 24,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Colors.grey.shade600,
            ),
            const SizedBox(height: 4),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.grey.shade600,
              ),
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}

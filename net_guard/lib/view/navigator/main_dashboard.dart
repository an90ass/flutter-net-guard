import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';


class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
     ];

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;

    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: _screens[_currentIndex],
            ),
          ],
        ),
        bottomNavigationBar: !isDesktop ? _buildBottomNav() : null,
      ),
    );
  }



  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _currentIndex > 3 ? 0 : _currentIndex,
      backgroundColor: AppColors.surface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => setState(() => _currentIndex = index),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Hub"),
        BottomNavigationBarItem(icon: Icon(Icons.radar), label: "Radar"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "Devices"),
        BottomNavigationBarItem(icon: Icon(Icons.hub), label: "Topology"),
      ],
    );
  }
}

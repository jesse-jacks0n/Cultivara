import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'monitoring_screen.dart';
import 'analytics_screen.dart';

void main() {
  runApp(const CultivaraApp());
}

class CultivaraApp extends StatelessWidget {
  const CultivaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cultivara',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'SF Pro Display',
        scaffoldBackgroundColor: const Color(0xFFF5F5F7),
      ),
      home: const MainNavigationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const MonitoringScreen(),
    const AnalyticsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home_filled, 0),
                _buildNavItem(Icons.camera_alt_outlined, 1),
                _buildNavItem(Icons.analytics_outlined, 2),
                _buildNavItem(Icons.map_outlined, 3),
                _buildNavItem(Icons.settings_outlined, 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    final isSelected = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        if (index < 3) {
          setState(() {
            _currentIndex = index;
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.grey[600],
          size: 24,
        ),
      ),
    );
  }
}
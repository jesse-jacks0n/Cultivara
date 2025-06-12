import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Analytic',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  const Icon(Icons.more_vert, size: 24),
                ],
              ),
            ),

            // Tab navigation
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  _buildTab('Details', false),
                  _buildTab('Plant', true),
                  _buildTab('Task', false),
                  _buildTab('Device', false),
                  _buildTab('Activity', false),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Section dropdown
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Section 3',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Spinach',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Health status
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    'Overall health:',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Good',
                      style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // Health percentage
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '92',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w300),
                  ),
                  const Text(
                    '%',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Your plants are thriving and showing excellent health.',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // View options
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  _buildViewOption('Analytic', true),
                  _buildViewOption('CCTV', false),
                  _buildViewOption('More Info', false),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Greenhouse layout
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage('https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=800&h=600&fit=crop'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    // Section labels
                    Positioned(
                      top: 20,
                      left: 20,
                      child: _buildSectionLabel('Section 1'),
                    ),
                    Positioned(
                      top: 20,
                      right: 100,
                      child: _buildSectionLabel('Section 2'),
                    ),
                    Positioned(
                      top: 120,
                      left: 60,
                      child: _buildSectionLabel('Section 3'),
                    ),
                    Positioned(
                      top: 120,
                      right: 60,
                      child: _buildSectionLabel('Section 5'),
                    ),
                    Positioned(
                      bottom: 120,
                      left: 60,
                      child: _buildSectionLabel('Section 4'),
                    ),
                    Positioned(
                      bottom: 120,
                      right: 60,
                      child: _buildSectionLabel('Section 6'),
                    ),
                    Positioned(
                      bottom: 60,
                      left: 20,
                      child: _buildSectionLabel('Section 7'),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 20,
                      child: _buildSectionLabel('Section 8'),
                    ),

                    // Navigation controls
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Column(
                        children: [
                          _buildNavButton(Icons.keyboard_arrow_up),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              _buildNavButton(Icons.keyboard_arrow_left),
                              const SizedBox(width: 8),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(Icons.center_focus_strong, color: Colors.black),
                              ),
                              const SizedBox(width: 8),
                              _buildNavButton(Icons.keyboard_arrow_right),
                            ],
                          ),
                          const SizedBox(height: 8),
                          _buildNavButton(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),

                    // Control buttons
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Row(
                        children: [
                          _buildControlButton(Icons.refresh),
                          const SizedBox(width: 8),
                          _buildControlButton(Icons.menu),
                        ],
                      ),
                    ),

                    // Bottom thumbnail
                    Positioned(
                      bottom: 20,
                      left: 70,
                      child: Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: NetworkImage('https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=200&h=150&fit=crop'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, bool isActive) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      padding: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: isActive
            ? const Border(bottom: BorderSide(color: Colors.black, width: 2))
            : null,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
          color: isActive ? Colors.black : Colors.grey,
        ),
      ),
    );
  }

  Widget _buildViewOption(String title, bool isActive) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (title == 'More Info') ...[
            const SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: isActive ? Colors.white : Colors.black,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSectionLabel(String section) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        section,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildNavButton(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.black, size: 20),
    );
  }

  Widget _buildControlButton(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
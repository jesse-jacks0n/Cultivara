import 'package:flutter/material.dart';

class MonitoringScreen extends StatelessWidget {
  const MonitoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.eco,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.notifications_outlined, size: 24),
                      const SizedBox(width: 12),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[300],
                        child: const Icon(Icons.person, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Sensor alert
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF3CD),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFFFC107)),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.warning_amber, color: Color(0xFFF57C00)),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ACE Temperature & Humidity Sensor',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '#TH01 • Sensor',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFC107),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Signal Issue since 08:02 AM',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Camera section
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    // Placeholder for greenhouse image
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=800&h=400&fit=crop'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Camera overlay
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Camera 1',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    // Control buttons
                    Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildCameraButton(Icons.camera_alt),
                          _buildCameraButton(Icons.notifications_outlined),
                          _buildCameraButton(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    // Zoom indicator
                    const Positioned(
                      top: 16,
                      right: 16,
                      child: Icon(
                        Icons.zoom_in,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Task section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Task',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Progress bar
                    Row(
                      children: [
                        const Text('40%', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.4,
                            backgroundColor: Colors.grey[200],
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4CAF50)),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text('2/5 Task Completed', style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Task items
                    _buildTaskItem(
                      'Watering',
                      'Water plants with 1 inch of water in the morning',
                      '07:00 AM - 07:30 AM',
                      true,
                    ),
                    const SizedBox(height: 16),
                    _buildTaskItem(
                      'Fertilizing',
                      'Apply organic fertilizer at base of plants. Quantity: ...',
                      '',
                      true,
                    ),
                    const SizedBox(height: 16),
                    _buildTaskItem(
                      'Pest Inspection',
                      'Check leaves for any signs of aphids or other pests',
                      '',
                      false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCameraButton(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }

  Widget _buildTaskItem(String title, String description, String time, bool isCompleted) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isCompleted ? const Color(0xFF4CAF50) : Colors.grey[300],
            shape: BoxShape.circle,
          ),
          child: isCompleted
              ? const Icon(Icons.check, color: Colors.white, size: 16)
              : null,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              if (time.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  time,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
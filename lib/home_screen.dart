import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              // Header with profile
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

              // Location and date
              Row(
                children: [
                  const Icon(Icons.location_on_outlined, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  const Text(
                    'Wellburg, Germany',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const Spacer(),
                  const Text(
                    'Tue, 10 September 2024',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                '09:37 AM',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 20),

              // Weather section
              Row(
                children: [
                  const Icon(Icons.wb_sunny, color: Colors.orange, size: 24),
                  const SizedBox(width: 8),
                  const Text(
                    'Sunny',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Text(
                    '24°C',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const Text(
                'H:40°C  L:52°C',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 20),

              // Garden dropdown
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Spinach Garden 08',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Status cards
              Row(
                children: [
                  Expanded(
                    child: _buildStatusCard(
                      'Plant Health',
                      '94%',
                      'Good',
                      const Color(0xFF4CAF50),
                      Icons.eco,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(
                      'Wind',
                      '2',
                      'm/s',
                      Colors.blue,
                      Icons.air,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(
                      'Temperature',
                      '19',
                      '°C',
                      Colors.orange,
                      Icons.thermostat,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Sensor readings
              Row(
                children: [
                  Expanded(
                    child: _buildSensorCard('pH Level', '7.6', Icons.science),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildSensorCard('Humidity', '82%', Icons.water_drop),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildSensorCard('Soil Moisture', '65%', Icons.grass),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Device section
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
                          'Device',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Text(
                          'Sensor',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        const Spacer(),
                        const Text(
                          'Camera',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        const SizedBox(width: 40),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xFF4CAF50),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            'JLNew H10: Soil Moisture Sensor',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Text(
                          '5',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
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

  Widget _buildStatusCard(String title, String value, String unit, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 16),
              const SizedBox(width: 4),
              const Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text(
                unit,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSensorCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: Colors.grey),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
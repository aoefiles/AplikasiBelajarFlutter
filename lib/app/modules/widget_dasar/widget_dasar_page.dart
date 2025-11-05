import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class WidgetDasarPage extends StatelessWidget {
  const WidgetDasarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget Dasar')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.foundation_outlined,
                size: 80, color: Colors.deepPurple.shade300),
            const SizedBox(height: 16),
            Text(
              'Stateless vs Stateful Widget',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 24),
            
            Text(
              'Flutter punya dua jenis widget utama:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              '1. Stateless Widget',
              'Widget yang tidak bisa berubah (statis). Tampilannya murni berdasarkan informasi yang diterima saat dibuat.',
            ),
            const SizedBox(height: 12),
            _buildInfoCard(
              context,
              '2. Stateful Widget',
              'Widget yang bisa berubah (dinamis), misalnya karena interaksi pengguna atau perubahan data. Ia memiliki "State" internal.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String title, String description) {
    return Card(
      elevation: 0,
      color: Colors.deepPurple.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(description,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(height: 1.5)),
          ],
        ),
      ),
    );
  }
}
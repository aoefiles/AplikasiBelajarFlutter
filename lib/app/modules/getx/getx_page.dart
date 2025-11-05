import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class TentangGetxPage extends StatelessWidget {
  const TentangGetxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang GetX')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.auto_awesome_outlined,
                size: 80, color: Colors.deepPurple.shade300),
            const SizedBox(height: 16),
            Text(
              'Apa itu GetX?',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'GetX adalah state management, dependency injection, dan routing dalam satu paket ringan.',
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                 
                  child: _buildProConCard(
                    context,
                    'Kelebihan',
                    Icons.check_circle_outline,
                    Colors.green,
                    [
                      'Super simpel dan cepat.',
                      'Sangat sedikit kode (tanpa context).',
                      'Sudah ada navigasi & dependency injection.',
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  
                  child: _buildProConCard(
                    context,
                    'Kekurangan',
                    Icons.warning_amber_outlined,
                    Colors.orange,
                    [
                      'Jika sembarangan, kode bisa berantakan.',
                      'Terlalu mudah bisa membuat developer pemula melewatkan konsep arsitektur.',
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  
  Widget _buildProConCard(BuildContext context, String title, IconData icon,
      Color color, List<String> items) {
    return Card(
      elevation: 0,
      color: color.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: color.withOpacity(0.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color, size: 20),
                const SizedBox(width: 8),
                Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 12),
            for (var item in items)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text('• $item',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(height: 1.4)),
              ),
          ],
        ),
      ),
    );
  }
}
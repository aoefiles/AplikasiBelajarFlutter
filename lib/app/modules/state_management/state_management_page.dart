import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class StateManagementPage extends StatelessWidget {
  const StateManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.account_tree_outlined,
                size: 80, color: Colors.deepPurple.shade300),
            const SizedBox(height: 16),
            Text(
              'Apa itu State Management?',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'State Management mengacu pada cara Anda mengelola dan memperbarui data (state) yang digunakan oleh antarmuka pengguna (UI) aplikasi.',
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5),
            ),
            const SizedBox(height: 24),
            Text(
              'Mengapa Penting?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            _buildBulletPoint(context,
                'Aplikasi besar bisa menjadi rumit tanpa pengelolaan state yang baik.'),
            _buildBulletPoint(context,
                'Memastikan sinkronisasi yang tepat antara UI dan data.'),
            _buildBulletPoint(context,
                'Membuat kode lebih terstruktur dan mudah dibaca.'),
            _buildBulletPoint(
                context, 'Mempermudah debugging dan pengujian.'),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Expanded(
              child: Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(height: 1.4))),
        ],
      ),
    );
  }
}
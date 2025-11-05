// lib/app/modules/routing/routing_page.dart

import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class RoutingPage extends StatelessWidget {
  const RoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Routing & Navigasi')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.alt_route_outlined,
                size: 80, color: Colors.deepPurple.shade300),
            const SizedBox(height: 16),
            Text(
              'Navigasi dengan GetX',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'GetX sangat menyederhanakan navigasi. Kita tidak perlu `context` untuk berpindah halaman. Kita menggunakan "named routes" (rute bernama) yang telah kita daftarkan di `app_pages.dart`.',
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5),
            ),
            const SizedBox(height: 24),
    
            _buildInfoCard(
              context,
              'Get.toNamed()',
              'Digunakan untuk navigasi ke halaman lain. Halaman sebelumnya masih ada di "tumpukan" (stack), sehingga pengguna bisa menekan tombol "Back".\n\nContoh: Get.toNamed(AppRoutes.home);',
            ),
            const SizedBox(height: 12),
            _buildInfoCard(
              context,
              'Get.offAllNamed()',
              'Navigasi ke halaman lain DAN hapus semua halaman sebelumnya dari tumpukan. Pengguna tidak bisa "Back" lagi.\n\nContoh: Sempurna untuk pindah dari halaman Intro ke Home, atau setelah Logout.',
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
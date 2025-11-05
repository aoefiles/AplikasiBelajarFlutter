import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import '../../widgets/custom_drawer.dart'; 
import '../../widgets/materi_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - Materi Flutter'),
      ),
      drawer: const CustomDrawer(),
      
      body: ListView(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Icon(
                  Icons.menu_book_outlined,
                  size: 80,
                  color: Colors.deepPurple.shade300,
                ),
                const SizedBox(height: 16),
                
                Text(
                  'Mari Mengenal Flutter!',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 10),
                
              
                Text(
                  'Selamat datang di panduan dasar Flutter! Aplikasi ini akan membantu Anda mempraktikkan konsep inti Flutter, mulai dari Widget, State Management, hingga Navigasi halaman menggunakan GetX ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(height: 1.5, color: Colors.black87),
                ),
                
                
                const Divider(
                  height: 40,
                  thickness: 1,
                ),
                
                Text(
                  'Daftar Materi',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        

          MateriListTile(
            title: 'Widget Dasar',
            icon: Icons.foundation_outlined,
            onTap: () => Get.toNamed(AppRoutes.widgetDasar),
          ),
          MateriListTile(
            title: 'State Management',
            icon: Icons.account_tree_outlined,
            onTap: () => Get.toNamed(AppRoutes.stateManagement),
          ),
          MateriListTile(
            title: 'Routing & Navigasi',
            icon: Icons.alt_route_outlined,
            onTap: () => Get.toNamed(AppRoutes.routing),
          ),
          MateriListTile(
            title: 'Tentang GetX',
            icon: Icons.auto_awesome_outlined,
            onTap: () => Get.toNamed(AppRoutes.tentangGetx),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
      
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Firyal Aufa F',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: const Text('firyalaufa23@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.flutter_dash,
                size: 42,
                color: Colors.deepPurple,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade400,
            ),
          ),
          
          
          _buildDrawerItem(
            icon: Icons.home_outlined,
            title: 'Home',
            onTap: () => Get.toNamed(AppRoutes.home),
          ),
          _buildDrawerItem(
            icon: Icons.foundation_outlined,
            title: 'Widget Dasar',
            onTap: () => Get.toNamed(AppRoutes.widgetDasar),
          ),
          _buildDrawerItem(
            icon: Icons.account_tree_outlined,
            title: 'State Management',
            onTap: () => Get.toNamed(AppRoutes.stateManagement),
          ),
          _buildDrawerItem(
            icon: Icons.alt_route_outlined,
            title: 'Routing & Navigasi',
            onTap: () => Get.toNamed(AppRoutes.routing),
          ),
          _buildDrawerItem(
            icon: Icons.auto_awesome_outlined,
            title: 'Tentang GetX',
            onTap: () => Get.toNamed(AppRoutes.tentangGetx),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Get.back(); 
        onTap(); 
      },
    );
  }
}
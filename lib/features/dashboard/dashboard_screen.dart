import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard Toko')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('SPLM Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(leading: const Icon(Icons.dashboard), title: const Text('Dashboard'), onTap: () {}),
            ListTile(leading: const Icon(Icons.assignment), title: const Text('Program Aktif'), onTap: () {}),
            ListTile(leading: const Icon(Icons.camera_alt), title: const Text('Input Laporan'), onTap: () {}),
            const Divider(),
            ListTile(leading: const Icon(Icons.logout), title: const Text('Logout'), onTap: () {}),
          ],
        ),
      ),
      body: const Center(
        child: Text('Selamat Datang di Dashboard SPLM!
Silakan pilih menu di samping.'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/auth/login_screen.dart';
import 'features/dashboard/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: Initialize Firebase here after adding google-services.json
  // await Firebase.initializeApp();
  runApp(const SplmApp());
}

class SplmApp extends StatelessWidget {
  const SplmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPLM App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      routes: {
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}

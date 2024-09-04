// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _checkToken();
  }

  Future<void> _checkToken() async {
    // Retrieve the token from secure storage
    final token = await _secureStorage.read(key: 'auth_token');
    
    // Navigate based on whether the token exists
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        if (token != null) {
          // Navigate to the main screen and remove all previous routes
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/main',
            (Route<dynamic> route) => false, // Remove all previous routes
          );
        } else {
          // Navigate to the login screen and remove all previous routes
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/login',
            (Route<dynamic> route) => false, // Remove all previous routes
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gradient.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/skill_link-logo1.png',
          ),
        ),
      ),
    );
  }
}

// lib/screens/connections_screen.dart
import 'package:flutter/material.dart';

class ConnectionsScreen extends StatelessWidget {
  const ConnectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connections'),
      ),
      body: const Center(
        child: Text('Connections Screen Content'),
      ),
    );
  }
}

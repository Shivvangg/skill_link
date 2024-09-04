// lib/main.dart
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/user/add_project_screen.dart';
import 'screens/user/chat_screen.dart';
import 'screens/user/connections_screen.dart';
import 'screens/user/profile_screen.dart';
import 'screens/user/projects_screen.dart'; // Import your splash screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skill Link App',
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: const Color.fromARGB(255, 236, 171, 87),
        visualDensity: VisualDensity.adaptivePlatformDensity, 
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.white),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(), // Initial splash screen
        '/login': (context) => const LoginScreen(), // Login screen
        '/main': (context) => const MainScreen(), // Main screen with BottomNavigationBar
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ChatScreen(),
    const ProjectsScreen(),
    const AddProjectScreen(),
    const ConnectionsScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Project',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Connections',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// lib/screens/profile_screen.dart
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Skill Link",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontStyle: FontStyle.italic),
        ),
      ),
      body:  Column(
        children: [ 
          profileHeaderWidget(context),
        ],
      ),
    );
  }
}


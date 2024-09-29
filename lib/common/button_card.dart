// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key, required this.name, required this.icon});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: const Color.fromARGB(255, 0, 170, 255),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text( name , style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

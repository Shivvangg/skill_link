// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/chat_model.dart';

class ConnectionCard extends StatelessWidget {
  const ConnectionCard({super.key, required this.connection});
  final ChatModel connection;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: Colors.blueGrey[200],
          child: SvgPicture.asset("assets/iconns/person.svg",
              color: Colors.white, height: 30, width: 30),
        ),
        title: Text( connection.name , style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          connection.status,
          style: const TextStyle(
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}

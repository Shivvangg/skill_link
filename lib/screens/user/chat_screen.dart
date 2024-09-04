// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Skill Link",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(value: "New Group", child: Text("New Group")),
              const PopupMenuItem(
                  value: "Starred Message", child: Text("Starred Message")),
              const PopupMenuItem(value: "Setting", child: Text("Setting")),
            ];
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        child: const Icon(Icons.chat),
      ),
      body: Container(),
    );
  }
}

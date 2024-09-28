// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:skill_link/common/custom_card.dart';

import '../../model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<ChatModel> chats = [
    ChatModel(name: "Shivang Pande", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Jay Shree Ram"),
    ChatModel(name: "Jeet Sheth", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Jay Shree Krishna"),
    ChatModel(name: "Project Alpha", icon: "groups.svg", isGroup: true, time: "4:00", currentMessage: "Hello Everybody")
  ];
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
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => Customcard(chatModel: chats[index]),
      ),
    );
  }
}

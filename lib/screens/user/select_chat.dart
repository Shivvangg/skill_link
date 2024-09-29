import 'package:flutter/material.dart';
import 'package:skill_link/common/button_card.dart';
import 'package:skill_link/common/connection_card.dart';
import 'package:skill_link/model/chat_model.dart';

class SelectChat extends StatefulWidget {
  const SelectChat({super.key});

  @override
  State<SelectChat> createState() => _SelectChatState();
}

class _SelectChatState extends State<SelectChat> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> connections = [
    ChatModel(name: "Shivang Pande", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Jay Shree Ram", status: "Just Fine"),
    ChatModel(name: "Jeet Sheth", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Jay Shree Krishna", status: "Just Fine"),
    ChatModel(name: "Project Alpha", icon: "groups.svg", isGroup: true, time: "4:00", currentMessage: "Hello Everybody", status: "Just Fine"),
    ChatModel(name: "Shivang Pande", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Jay Shree Ram", status: "Just Fine"),
    ChatModel(name: "Jeet Sheth", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Jay Shree Krishna", status: "Just Fine"),
    ChatModel(name: "Project Alpha", icon: "groups.svg", isGroup: true, time: "4:00", currentMessage: "Hello Everybody", status: "Just Fine")
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Connections",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "20 Connections",
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 26,
              )),
          PopupMenuButton<String>(
              padding: const EdgeInsets.all(0),
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: "Add a friend",
                    child: Text("Add a friend"),
                  ),
                  const PopupMenuItem(
                    value: "Connections",
                    child: Text("Connections"),
                  ),
                  const PopupMenuItem(
                    value: "Refresh",
                    child: Text("Refresh"),
                  ),
                ];
              }),
        ],
      ),
      body: ListView.builder(
        itemCount: connections.length + 2,
        itemBuilder: (context, index) {
          if (index == 0){
            return const ButtonCard(name: "New Team", icon: Icons.group);
          } else if (index == 1){
            return const ButtonCard(name: "New Connection", icon: Icons.person_add);
          }
          return ConnectionCard(connection: connections[index - 2]);
        },
      ),
    );
  }
}

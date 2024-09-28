// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_link/model/chat_model.dart';
import 'package:skill_link/screens/user/individual_chatpage.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualChatpage(chatModel: chatModel)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: SvgPicture.asset(
                chatModel.isGroup ? "assets/iconns/groups.svg" : "assets/iconns/person.svg",
                  color: Colors.white, height: 37, width: 37),
            ),
            title:  Text(chatModel.name,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            subtitle:  Row(
              children: [
                const Icon(Icons.done_all),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                )
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}

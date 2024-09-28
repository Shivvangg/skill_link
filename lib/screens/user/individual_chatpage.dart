// ignore_for_file: deprecated_member_use, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_link/model/chat_model.dart';

class IndividualChatpage extends StatefulWidget {
  const IndividualChatpage({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  State<IndividualChatpage> createState() => _IndividualChatpageState();
}

class _IndividualChatpageState extends State<IndividualChatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: SvgPicture.asset(
                  widget.chatModel.isGroup
                      ? "assets/iconns/groups.svg"
                      : "assets/iconns/person.svg",
                  color: Colors.white,
                  height: 36,
                  width: 36,
                ),
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatModel.name,
                    style: const TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.bold,
                    )),
                const Text(
                  "Last seen today at 12:05",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          PopupMenuButton<String>(
              padding: const EdgeInsets.all(0),
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: "View Participant",
                    child: Text("View Participant"),
                  ),
                  const PopupMenuItem(
                    value: "Documents and Links",
                    child: Text("Documents and Links"),
                  ),
                  const PopupMenuItem(
                    value: "Search",
                    child: Text("Search"),
                  ),
                ];
              }),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    child: Card(
                      margin:
                          const EdgeInsets.only(left: 2, right: 2, bottom: 11),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type a message",
                          prefixIcon: IconButton(
                            icon: const Icon(
                              Icons.emoji_emotions,
                            ),
                            onPressed: () {},
                          ),
                          suffixIcon: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.attach_file)
                              ),
                              IconButton(
                                  onPressed: null, 
                                  icon: Icon(Icons.camera_alt)
                              ),
                            ],
                          ),
                          contentPadding: const EdgeInsets.all(5),
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width - 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                    child: CircleAvatar(
                      radius: 25,
                      child: IconButton(icon: const Icon(Icons.mic, color: Colors.white,), onPressed: () {}),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

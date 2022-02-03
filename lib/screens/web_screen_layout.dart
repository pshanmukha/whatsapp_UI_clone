import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_rivaan_ranawat/colors.dart';
import 'package:whatsapp_clone_rivaan_ranawat/widgets/chat_list.dart';
import 'package:whatsapp_clone_rivaan_ranawat/widgets/contacts_list.dart';
import 'package:whatsapp_clone_rivaan_ranawat/widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone_rivaan_ranawat/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone_rivaan_ranawat/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                //web profile bar
                WebProfileBar(),
                //web search bar
                WebSearchBar(),
                ContactsList(),
              ],
            ),
          ),
        ),
        //web screen
        Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //Chat App Bar
                WebChatAppBar(),
                //Chat List
                Expanded(child: ChatList()),
                //Message Input Box
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      ),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ),),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10,right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: "Type a message",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(left: 20)
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_voice,
                          color: Colors.grey,
                        ),),
                    ],
                  ),
                ),
              ],
            )),
      ],
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/ios.dart';

import 'Ios_Communication.dart';
import 'Ios_Status.dart';
import 'Ios_call.dart';
import 'Setting.dart';

class ChatItam extends StatefulWidget {
  const ChatItam({super.key});

  @override
  State<ChatItam> createState() => _ChatItamState();
}

class _ChatItamState extends State<ChatItam> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(

        currentIndex: 3,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:Icon(CupertinoIcons.play_circle),
            label: 'Status'
          ),
          BottomNavigationBarItem(
              icon:Icon(CupertinoIcons.phone),
              label: 'Call'
          ),
          BottomNavigationBarItem(
              icon:Icon(CupertinoIcons.person_alt_circle),
              label: 'Comunitys'
          ),
          BottomNavigationBarItem(
              icon:Icon(CupertinoIcons.chat_bubble_2_fill),
              label: 'Chats'
          ),
          BottomNavigationBarItem(
              icon:Icon(CupertinoIcons.settings_solid),
              label: 'Settings'
          ),
        ],

      ),
      tabBuilder: (context, index) {

        switch(index)
        {
          case 0 :
            return Ios_Status();
          case 1 :
            return Ios_Call();
            case 2 :
          return CommunitiesIos();
          case 3 :
          return Apple();
          case 4 :
            return SettingIos();

        }
        return Container(

        );

      },
    );
  }
}

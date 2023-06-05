import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';
import 'package:swagapp/modules/pages/chats/chats_page.dart';
import 'package:swagapp/modules/pages/home/home_page.dart';

abstract class AppRoutes {
  
  static final Map<String, Widget Function(BuildContext)> routes = {

    RouteNames.chat  : (BuildContext context)=> const ChatsPage(),
    RouteNames.home  : (BuildContext context)=> const HomePage(),
    RouteNames.chats : (BuildContext context)=> const ChatPage(),
  };
}

abstract class RouteNames {

  static const String home = 'home';
  static const String chat = 'chat';
  static const String chats = 'chats';
}

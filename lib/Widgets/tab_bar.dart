import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(
            
            tabs: [
            Tab(icon: Icon(Icons.chat),text: 'CHAT',),
            Tab(icon: Icon(Icons.chalet),text: 'STATUS',),
            Tab(icon: Icon(Icons.call),text: 'CALLS',),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: const Center(
              child: Text('CHATS'),
            ),
          ),
          Container(
            child: const Center(
              child: Text('STATUS'),
            ),
          ),
          Container(
            child: const Center(
              child: Text('CALLS'),
            ),
          ),
        ]),
      ),
    );
  }
}
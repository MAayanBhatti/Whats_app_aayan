import 'package:flutter/material.dart';
import 'package:whats_app_aayan/Calls.dart';
import 'package:whats_app_aayan/Chats.dart';
import 'package:whats_app_aayan/Status.dart';

void main() => runApp(const Whatsapp());

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            ),
            title: const Text('Whatsapp'),
          ),
          body: const TabBarView(
            children: [
              Chats(),
              Status(),
              Calls(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.chat), onPressed: () {}),
        ),
      ),
    );
  }
}

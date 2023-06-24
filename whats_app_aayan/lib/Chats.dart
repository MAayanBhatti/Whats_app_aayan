import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < 10; i++)
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/$i/200'),
              ),
              title: Text('User $i'),
              subtitle: const Text('What\'s Up! How is it going'),
              trailing: Text('10:$i'),
            ),
        ],
      ),
    );
  }
}

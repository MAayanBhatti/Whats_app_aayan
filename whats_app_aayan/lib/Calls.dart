import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/id/56/200'),
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status updates'),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Recent updates'),
          ),
          for (int i = 100; i < 150; i++)
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/$i/200'),
              ),
              title: Text('User $i'),
              subtitle: const Text('Today 10:21 '),
            ),
        ],
      ),
    );
  }
}

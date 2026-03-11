import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Your Profile"),
      ),

      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {

          final item = history[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(item.image),
            ),

            title: Text(
              item.restaurant,
              style: const TextStyle(color: Colors.white),
            ),

            subtitle: Text(
              "${item.date} • ${item.price}",
              style: const TextStyle(color: Colors.white70),
            ),

            trailing: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("${item.credits} Credits"),
            ),
          );
        },
      ),
    );
  }
}
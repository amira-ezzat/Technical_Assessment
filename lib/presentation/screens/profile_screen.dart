import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';
import '../widgets/history_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Your Profile"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.settings_outlined),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Profile Info
            Row(
              children: [

                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage("assets/images/order1.png"),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      Text(
                        "Asmar Ajlouni",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        "+962 234 567 2349",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),

                const Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                )
              ],
            ),

            const SizedBox(height: 30),

            /// Loyalty History title
            const Text(
              "Loyalty History",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            /// Cards
            Expanded(
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {

                  final item = history[index];

                  return HistoryCard(history: item);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
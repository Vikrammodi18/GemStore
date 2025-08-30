import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}

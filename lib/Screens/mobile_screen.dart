import 'package:flutter/material.dart';

import '../colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            "WhatApp",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            )
          ],
          bottom: const TabBar(
            // isScrollable: true,
            unselectedLabelColor: Colors.grey,
            indicatorColor: messageColor,
            indicatorWeight: 4,
            labelColor: messageColor,
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),

            // physics: AlwaysScrollableScrollPhysics(),
            // isScrollable: true,
            tabs: [
              // Tab(
              //   icon: Icon(Icons.people_alt),
              // ),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: const Text("Mobile Screen"),
      ),
    );
  }
}

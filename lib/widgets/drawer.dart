import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage("https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/306871515/original/8d2b036ae115d538c6bd982923510c1312eab660/create-ultra-realistic-profile-picture-with-ai.png"),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Saksham"),
                            Text(
                              "saksham252003@gmail.com",
                              style: TextStyle(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared with me"),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("Uploads"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      body: Container(
        child: const Center(
          child: Text("LEARNING DRAWER!!!!"),
        ),
      ),
    );
  }
}

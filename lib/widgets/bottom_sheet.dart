import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: false,
                isDismissible: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (context) {
                  return const SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("BMW"),
                          subtitle: Text("Car"),
                        ),
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Fruit"),
                        ),
                        ListTile(
                          title: Text("Pen"),
                          subtitle: Text("Object"),
                        ),
                        ListTile(
                          title: Text("TVS"),
                          subtitle: Text("Bike"),
                        ),
                        ListTile(
                          title: Text("Samsung"),
                          subtitle: Text("Phone"),
                        ),
                        ListTile(
                          title: Text("BMW"),
                          subtitle: Text("Car"),
                        ),
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Fruit"),
                        ),
                        ListTile(
                          title: Text("Pen"),
                          subtitle: Text("Object"),
                        ),
                        ListTile(
                          title: Text("TVS"),
                          subtitle: Text("Bike"),
                        ),
                        ListTile(
                          title: Text("Samsung"),
                          subtitle: Text("Phone"),
                        ),
                        ListTile(
                          title: Text("BMW"),
                          subtitle: Text("Car"),
                        ),
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Fruit"),
                        ),
                        ListTile(
                          title: Text("Pen"),
                          subtitle: Text("Object"),
                        ),
                        ListTile(
                          title: Text("TVS"),
                          subtitle: Text("Bike"),
                        ),
                        ListTile(
                          title: Text("Samsung"),
                          subtitle: Text("Phone"),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: const Text(
            "Show Bottom Sheet",
            style: TextStyle(color: Colors.black54, fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
        ),
      ),
    );
  }
}

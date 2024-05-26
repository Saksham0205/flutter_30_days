import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showMyDialog(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text("Show Alert"),
          ),
        ),
      ),
    );
  }
}

Future<void> showMyDialog(context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("This is an Alert"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
            ),
            TextButton(onPressed: (){}, child:const Text("Approve"),),
          ],
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Hi from Saksham"),
              ],
            ),
          ),
        );
      });
}

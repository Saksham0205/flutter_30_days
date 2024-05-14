import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(content: Text("There is an error"),
              // backgroundColor: Colors.redAccent,
                duration: Duration(seconds: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              behavior: SnackBarBehavior.floating,
              action: SnackBarAction(label: "Undo", onPressed: () {  },),);
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text("Show Snackbar"),
          ),
        ),
      ),
    );
  }
}

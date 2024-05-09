import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container and Sized Box"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 20

              )
            ],
            color: Colors.purple,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)
          ),
          child: Center(
            child: Text(
              "Hello Ji!"
            ),
          ),
        ),

      ),


    );
  }
}

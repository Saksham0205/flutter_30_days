import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
                overlayColor: MaterialStateProperty.all(Colors.grey),
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
              ),
              onPressed: () {
                print("Text Button");
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Press me",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: Colors.red
                ),onPressed: (){
                print("Elevated Button");
              }, child: const Text("Press me",style: TextStyle(
                fontSize: 20
              ),),),
            ),
          ],
        ),
      ),
    );
  }
}

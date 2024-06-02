import 'package:flutter/material.dart';
class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = "Orange";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown List"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),

              width: MediaQuery.sizeOf(context).width,

              height: 100,
              child: DropdownButton<String>(icon: Icon(Icons.arrow_circle_down,color: Colors.white,),borderRadius: BorderRadius.circular(20),value: selectedValue,onChanged: (String? newValue) {
                setState(() {
                  selectedValue =newValue!;
                });
              },items: <String>[
                "Orange",
                "Mango",
                "Grapes",
                "Banana",
                "Watermelon",
              ].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem(child: Text(value,style: TextStyle(color: Colors.white),),value: value,);
              }).toList(), )
            ),
          )
        ],

      ),
    );
  }
}
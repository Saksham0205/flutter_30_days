import 'package:flutter/material.dart';

class RowsandColumns extends StatelessWidget {
  const RowsandColumns({super.key});

  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
      ),
      body: Container(
        color: Colors.white,
        height: 200,
        width: 200,
        child: Wrap(
          children: [
            Container(height: 50,width: 50,color: Colors.red,),
                Container(height: 50,width: 50,color: Colors.orange,),
                Container(height: 50,width: 50,color: Colors.yellow,),
                Container(height: 50,width: 50,color: Colors.green,),
                Container(height: 50,width: 50,color: Colors.blue,),
                Container(height: 50,width: 50,color: Colors.indigo,),
                Container(height: 50,width: 50,color: Colors.purple,),
          ],
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(height: 50,width: 50,color: Colors.red,),
        //     Container(height: 50,width: 50,color: Colors.orange,),
        //     Container(height: 50,width: 50,color: Colors.yellow,),
        //     Container(height: 50,width: 50,color: Colors.green,),
        //     Container(height: 50,width: 50,color: Colors.blue,),
        //     Container(height: 50,width: 50,color: Colors.indigo,),
        //     Container(height: 50,width: 50,color: Colors.purple,),
        //   ],
        // ),
      ),
    );
  }
}

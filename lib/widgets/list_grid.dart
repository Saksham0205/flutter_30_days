import 'package:flutter/material.dart';

class ListandGrid extends StatelessWidget {
  const ListandGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = [
      "Orange",
      "Muskmelon",
      "Watermelon",
      "Pineapple",
      "Gauva",
      "Apple",
      "Grapes",
      "Banana"
    ];
    List<String> price = [
      "Rs 50/kg",
      "Rs 40/kg",
      "Rs 20/kg",
      "Rs 70/kg",
      "Rs 40/kg",
      "Rs 100/kg",
      "Rs 150/kg",
      "Rs 60/kg"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid View"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(Icons.add_shopping_cart),
        //         title: Text(fruits[index]),
        //         subtitle: Text(price[index]),
        //       ),
        //     );
        //   },
        // ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3/4,crossAxisSpacing: 20,mainAxisSpacing: 20),
          itemCount: fruits.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Card(
                  child: Center(
                    child: Text(fruits[index]),
                  ),
                ),
              ),
            );

          },
        ),
      ),
    );
  }
}

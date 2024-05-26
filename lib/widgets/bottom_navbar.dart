import 'package:flutter/material.dart';
import 'package:flutter_30_days/widgets/alert_dialog.dart';
import 'package:flutter_30_days/widgets/animated_text.dart';
import 'package:flutter_30_days/widgets/bottom_sheet.dart';
import 'package:flutter_30_days/widgets/snackbar.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int selectedItems =0;
  PageController pageController=PageController();
  // List<Widget> widgets =[
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Add"),
  //   Text("Profile"),
  // ];
  void onTapped(int index){
    setState(() {
      selectedItems=index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          AlertDialogWidget(),
          AnimatedTextWidget(),
          BottomSheetWidget(),
          SnackBarWidget(),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(
            currentIndex: selectedItems,
            onTap: onTapped,
            items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),

      ],
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(color: Colors.green),
            unselectedLabelStyle: const TextStyle(color: Colors.grey),
          ),
    );
  }
}

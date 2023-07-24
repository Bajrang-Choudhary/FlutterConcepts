import 'package:containers_sizedbox/Widgets/alert.dart';
import 'package:containers_sizedbox/Widgets/dismissible.dart';
import 'package:containers_sizedbox/Widgets/rawscols.dart';
import 'package:containers_sizedbox/Widgets/snackbar.dart';
import 'package:flutter/material.dart';







class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  
  int seclectedindex =0;
  PageController pageController = PageController();



// List<Widget> widgets = [
//   const Text('Home'),
//   const Text('Search'),
//   const Text('Add'),
//   const Text('Profile')
// ];
  
  
  void onItemTapped(int index){
  setState(() {
    seclectedindex =index;
  });
  pageController.jumpToPage(index);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Bottom Nav'),
      // ),

      // body: Center(child: widgets.elementAt(seclectedindex)),
      body: PageView(controller: pageController,
      children: const [
        DismissibleWidget(),
        AlertDialogueBox(),
        RowsCols(),
        SnackbarWidget()
      ],),

      
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
      ],
      currentIndex: seclectedindex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,),
    );
  }
}
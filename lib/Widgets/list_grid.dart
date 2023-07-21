import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Mango', 'Orange', 'Apple', 'Banana', 'Grapes', 'Watermaleon'];
  Map fruits_person = {
    'fruits': ['Mango', 'Orange', 'Apple', 'Banana', 'Grapes', 'Watermaleon'],
    'names': ['Rupa', 'BC', 'Arjav', 'Ram', 'Arjun', 'Seeta',]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List And Grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: Container(
        //////////////////////////////LIST VIEW///////////////////////////////////////////////
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: (){
        //           print((fruits_person['names'][index]));
        //         },
        //         leading: const Icon(Icons.person_2),
        //         title:Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),
        //     ),);
        //   },
        // ),
        // child: ListView(children: const [     // If you Define a column then Scrolling will not possible bcoz it will show error that space is over.
        //   Card(                               // Card have more unique UI then a Container.
        //     child: ListTile(
        //       title: Text('Mango'),
        //       subtitle: Text('King of fruits'),
        //     ),
        //   ),
        // ]),
        ////////////////////////////////////LIST VIEW///////////////////////////////////////////
        


      
        // child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 20, mainAxisSpacing: 20),
        // children: const [
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        //   Card(child: Center(child: Text('Orange')),),
        // ],
        child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){
          return Card(child: Center(child: Text(fruits[index]),),);
        }),
        
        
        ),
        
      
      
      
      
    
      );
  }
}
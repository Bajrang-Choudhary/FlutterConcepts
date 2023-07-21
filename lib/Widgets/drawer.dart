import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                // color: Colors.red,
                padding: const EdgeInsets.all(10),
                child: const Row(children: [
                  CircleAvatar(radius: 40, backgroundImage: NetworkImage('https://clipart-library.com/image_gallery/n490782.png'),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Bajrang', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('abc@gmail.com')
                  ],)
                ],),
              )
              ),
            const ListTile(
              leading: Icon(Icons.folder),
              title: Text('My files'),
            ),
             const ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),
            ),
             const ListTile(
              leading: Icon(Icons.star),
              title: Text('Stared'),
            ),
             const ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash files'),
            ),
             const ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),
            ),
            const Divider(),
             const ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
             const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
            ),
            
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Drawer'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: const Center(child: Text('Hey There!')),
      ),
    );
  }
}
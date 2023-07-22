import 'package:flutter/material.dart';

class AlertDialogueBox extends StatelessWidget {
  const AlertDialogueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialogue'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton( 
          child: const Text('Show Alert'),
          onPressed: (){
              _showMyDialog(context);
          }
          ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context)async{
  return showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: const Text('This is an Alert'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              Text('This is a demo'),
              Text('This is Bajrang')
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){}, child: const Text('Approve')),
          TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Cancel')),
        ],
      );
    });
}
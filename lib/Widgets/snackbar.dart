import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Snackbar'),),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: (){
            final snackbar = SnackBar(
              action: SnackBarAction(label: 'Undo', onPressed: (){}),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)),
              backgroundColor: Colors.grey,
              duration: const Duration(milliseconds: 3000),
              // padding: EdgeInsets.all(30),
              content: const Center(child: Text('This is a SnackBar')));
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }, 
          child: const Text('Show Snackbar')),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)), // Distance between Text and border of button.
                overlayColor: MaterialStatePropertyAll(Colors.green), //when we click button then this color will be shown.
                elevation: MaterialStatePropertyAll(20),
                  backgroundColor: MaterialStatePropertyAll(Colors.amber)),
              onPressed: () {},
              child: const Text(
                'Press Me',
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
          ),
          const SizedBox(height: 20,),
          Container(height: 50, width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)))
              ),
              onPressed: (){
              print('like');
            }, 
              child: const Text('Press Me')
              
              ),
          )


        ]),
      ),
    );
  }
}

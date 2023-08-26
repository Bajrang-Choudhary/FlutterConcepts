import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      
      body: Container(
        color: Colors.indigo,
        child: Center(
          // we use stack when we want to put something over something
          child: Stack(
            children: [

              // Positioned should use instead of center.
              Positioned(
                bottom: 20,
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.yellow,
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
      //-------------------------------------------------------------
      // body: Stack(
      //   children: [
      //     Positioned(child: Container(
      //       decoration: BoxDecoration(
      //         image: DecorationImage(image: AssetImage('assetName'), fit: box)
      //       ),
      //       child: ,
      //     )),
      //     Align(
      //       child: ,
      //     ),     
      //   ],
      // ),
      //---------------------------------------------------------------
    );
  }
}
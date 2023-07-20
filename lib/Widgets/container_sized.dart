import 'package:flutter/material.dart';

// ignore: camel_case_types
class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Container and SizedBox'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              // shape: BoxShape.circle,
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight:Radius.circular(30),)
              borderRadius: BorderRadius.circular(20),
              boxShadow:  const [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 5,
                  color: Colors.blueGrey

                )
              ]

            ),
            child: Center(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.blue,)
                // Text('Hellooo',style: TextStyle(fontSize: 15),)
            ),
          ),
        )
        // SizedBox(
        //   height: 50.0,
        //   width: 50,
        //   child: Text('Hello'),
        // )
        );
  }
}


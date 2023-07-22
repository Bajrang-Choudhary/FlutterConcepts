import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Widget', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange,
      ),
      body: Center(
            child: ElevatedButton(
              child: const Text('Show Bottom Sheet'),
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  elevation: 0,
                  isDismissible: false,
                  context: context, builder: (context){
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      ListTile(
                        title: Text('Bajrang'),
                        subtitle: Text('I am a professional Flutter developer'),
                      ),
                       ListTile(
                        title: Text('Mango'),
                        subtitle: Text('This fruit is my favourite'),
                      ),
                       ListTile(
                        title: Text('Flutter'),
                        subtitle: Text('It is a Framework'),
                      ),
                       ListTile(
                        title: Text('Dart'),
                        subtitle: Text('Dart is a programming language'),
                      ),
                    ],);
                  });
              }),
      ),
    );
  }
}
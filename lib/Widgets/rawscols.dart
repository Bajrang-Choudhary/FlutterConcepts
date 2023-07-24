import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Raws and Columns'),
      ),
      body: Container(
            height: h,
            width: w,
            color: Colors.amberAccent,
            // child: Center(child: Container(height: 60, width: 60, color: Colors.blue,)),
            child: 
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //   Container(width: 60,height: 60,color: Colors.red,),
            //   Container(width: 60,height: 60,color: Colors.green,),
            //   Container(width: 60,height: 60,color: Colors.grey,),
            //   Container(width: 60,height: 60,color: Colors.black,)
            // ]),

            Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(width: 60,height: 60,color: Colors.red,),
              Container(width: 60,height: 60,color: Colors.green,),
              Container(width: 60,height: 60,color: Colors.grey,),
              Container(width: 60,height: 60,color: Colors.black,)
            ]),

            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   // crossAxisAlignment: CrossAxisAlignment.,
            //   children: [
            //   Container(width: 60,height: 60,color: Colors.red,),
            //   Container(width: 60,height: 60,color: Colors.green,),
            //   Container(width: 60,height: 60,color: Colors.grey,),
            //   Container(width: 60,height: 60,color: Colors.black,)
            // ]),
      ),
    );
  }
}
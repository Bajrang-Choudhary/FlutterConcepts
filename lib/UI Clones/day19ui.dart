import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 390,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                              decoration: const BoxDecoration(image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://ruthsarc.files.wordpress.com/2015/01/23rd.jpg'))),
                          height: 350,
                          // color: Colors.red,
                        )),
                        const Positioned(
                            bottom: 0,
                            right: 24,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww&w=1000&q=80'),
                              radius: 40,
                            )),
                            const Positioned(
                              top: 50,
                              left: 10,
                              child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,)),
                              const Positioned(
                              top: 50,
                              right: 15,
                              child: Icon(Icons.favorite_border_rounded, color: Colors.white,))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'This is a random discription of the topic',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Row(
                  //   children: [
                  //     Text('20',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  //     SizedBox(width: 5,),
                  //     Icon(Icons.favorite_rounded)
                  // ],)
                  rowIconText('20', Icons.favorite),
                  rowIconText('34', Icons.upload),
                  rowIconText('82', Icons.message),
                  rowIconText('295', Icons.face)
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: const Text('Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is text copy that serves to fill a space without saying anything meaningful.'),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon){
      return Row(
        children: [
          Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(width: 5,),
          Icon(icon)
        ],
      );
  }
}

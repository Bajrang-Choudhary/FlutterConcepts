// import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 250,
          child: CachedNetworkImage(imageUrl: 'https://upload.wikimedia.org/wikipedia/en/b/bd/Doraemon_character.png',
          placeholder: (context, url)=> const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),),
         
         
         
         
         
         
         
         
         
         
         
         
         /////////////////////////////ASSET IMAGE AND NETWORK IMAGE///////////////////////////////////////////////////
          // decoration: BoxDecoration(
          //   boxShadow: const [
          //     BoxShadow(blurRadius: 10,
          //     color: Colors.white)
          //   ],
          //   image: const DecorationImage(
          //       image: AssetImage('assets/image.png'),
          //       fit: BoxFit.cover


          //       // image: NetworkImage(
          //       //     'https://cdn.telanganatoday.com/wp-content/uploads/2023/01/Doraemon-3.jpg'),
          //       // fit: BoxFit.cover
          //       ),
          //   borderRadius: BorderRadius.circular(20),
          //   color: Colors.red,
          // ),
          // // child: Image.network('https://cdn.telanganatoday.com/wp-content/uploads/2023/01/Doraemon-3.jpg',fit: BoxFit.fitWidth),
         /////////////////////////////ASSET IMAGE AND NETWORK IMAGE///////////////////////////////////////////////////

        
        
        ),
      ),
    );
  }
}

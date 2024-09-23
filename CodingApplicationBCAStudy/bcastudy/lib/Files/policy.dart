import 'package:bcastudy/Components/appbar.dart';
import 'package:flutter/material.dart';

import '../Components/drawer.dart';
class policy extends StatelessWidget {
  const policy({super.key});

  @override
  Widget build(BuildContext context) {
    final list=[
      '1. This application are free and paid both versions are available.',
      '2. If you are take paid version of this app,so it would be add free.',
      '3. After Payment money will be not refundable in any case.',
      '4. Your Mobile Data is fully Secure.',
      '5. App are not taking any type of permission for any type of access like camera,microphone,etc',
      '6. If you are give pressure regarding payment or other things,so it will take legal Action against you and also cancelled your paid subscription.'
    ];
    return Scaffold(
        drawer:drawerBox(),
        //Drawer End
        appBar: AppBar(
            flexibleSpace:const appbar(text1: 'Home', text2: 'Courses', text3: 'Projects')
        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading Name
              const Padding(
                padding: EdgeInsets.all(10),
                child: Center(child:Text('Policy',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 30,),),),
              ),

              //SubPart
              Padding(padding:const EdgeInsets.all(10),child:Text(list[0],style: const TextStyle(color: Colors.cyan,fontSize: 30,),),),
              Padding(padding:const EdgeInsets.all(10), child:Text(list[1],style: const TextStyle(color: Colors.cyan,fontSize: 30,),),),
              Padding(padding:const EdgeInsets.all(10), child:Text(list[2],style: const TextStyle(color: Colors.cyan,fontSize: 30,),),),
              Padding(padding:const EdgeInsets.all(10), child:Text(list[3],style: const TextStyle(color: Colors.cyan,fontSize: 30,),),),
              Padding(padding:const EdgeInsets.all(10), child:Text(list[4],style: const TextStyle(color: Colors.cyan,fontSize: 30,),),),
              Padding(padding:const EdgeInsets.all(10), child:Text(list[5],style: const TextStyle(color: Colors.cyan,fontSize: 30,),),),
            ],
          ),
        )
    );
  }
}
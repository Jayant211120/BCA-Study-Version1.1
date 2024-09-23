import 'package:flutter/material.dart';
import '../Components/appbar.dart';
import '../Components/drawer.dart';
class appinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Drawer End
        drawer:drawerBox(),
        appBar:
        AppBar(
            flexibleSpace:const appbar(text1: 'Home', text2: 'Courses', text3: 'Projects')
        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Center(child:Text('App Information',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 30,),),),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child:Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.deepPurpleAccent,Colors.cyanAccent]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:const Text('Name\n CodingApplication',style: TextStyle(
                          fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white,
                        ),) ,
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child:Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.deepPurpleAccent,Colors.cyanAccent]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:const Text('CPU Required\n Any type of CPU',style: TextStyle(
                          fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white,
                        )) ,
                      )

                  ),
                ],),
              Wrap(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child:Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.deepPurpleAccent,Colors.cyanAccent]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:const Text('Storage\nMax:300MB',style: TextStyle(
                          fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white,
                        ),) ,
                      )

                  ),
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child:Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.deepPurpleAccent,Colors.cyanAccent]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:const Text('Platform\nAny:Android/\nWin/IOS/MacOS/Linux',style: TextStyle(
                          fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white,
                        ),) ,
                      )
                  ),
                ],),
              Wrap(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 80, 0),
                      child:Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.deepPurpleAccent,Colors.cyanAccent]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:const Text('Version\n1.0',style: TextStyle(
                          fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white,
                        ),) ,
                      )

                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child:Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.deepPurpleAccent,Colors.cyanAccent]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:const Text('Battery Use\nMinimum',style: TextStyle(
                          fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white,
                        ),) ,
                      )
                  ),
                ],)
            ],
          ),
        )
    );
  }
}
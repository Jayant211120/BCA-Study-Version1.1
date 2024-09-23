import 'package:bcastudy/Files/DrawerPracticePrograms/practicePrograms.dart';
import 'package:bcastudy/Files/appinfo.dart';
import 'package:bcastudy/Files/policy.dart';
import 'package:bcastudy/FireBaseAuthentication/authenticationFunctions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Files/howToUseApp.dart';
class drawerBox extends StatelessWidget {
  drawerBox({super.key,this.boxColor=Colors.indigo});
  final Color ? boxColor;
  final User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo,
      child:ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: boxColor),
              child: SingleChildScrollView(
              //First Column Start
              child: Column(
              children: [
                 //Google Authentication Start
                  CircleAvatar(
                    backgroundImage: NetworkImage(user!.photoURL??'https://th.bing.com/th/id/OIP.baJgAzbanFoKdGA8XnG7qAHaHa?rs=1&pid=ImgDetMain'),
                    radius: 40,
                  ),
                Text(user!.displayName??'No Name',style: const TextStyle(color: Colors.white),),
                Text(user!.email??'No Email',style: const TextStyle(color: Colors.white),),
                //Google Authentication End
              ],
            ),
          )),
          //Complete First Column

          //Second Column Start
          Column(
            children: [
              const Divider(color: Colors.white,),
              ListTile(
                  title: const Text('App Info',style: TextStyle(color: Colors.white),),
                  leading: const Icon(Icons.info,color: Colors.white),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>appinfo()));}
              ),
              const Divider(color: Colors.white,),
              ListTile(
                  title: const Text('Practice Programs or Projects',style: TextStyle(color: Colors.white),),
                  leading: const Icon(Icons.info,color: Colors.white),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>drawerPracticePrograms()));}
              ),
              const Divider(color: Colors.white,),
              ListTile(
                  title: const Text('How to use App',style: TextStyle(color: Colors.white),),
                  leading: const Icon(Icons.info,color: Colors.white),
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const HowToUseApp()));}
              ),
              const Divider(color: Colors.white,),
              ListTile(
                  title: const Text('Policy',style: TextStyle(color: Colors.white),),
                  leading: const Icon(Icons.info,color: Colors.white),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const policy()));}
              ),
              const Divider(color: Colors.white,),
              ListTile(
                  title: const Text('Exit',style: TextStyle(color: Colors.white),),
                  leading: const Icon(Icons.info,color: Colors.white),
                  onTap: (){Navigator.pop(context);}
              ),
              const Divider(color: Colors.white,),
              const Text('Contact Us',textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 25,),),
              const ExpansionTile(title: Text('Gmail',style: TextStyle(color: Colors.white),),leading: Icon(Icons.mail,color: Colors.white,),trailing:Icon(Icons.ads_click,color: Colors.white,),
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20,0,0),
                        child: Text('If you want to add some changes in Application or give any suggestions,then mail on this Gmail Id:',
                        style: TextStyle(color: Colors.white),),
                      )
                    ],),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 40, 20),
                    child: Text('jayant62644@gmail.com',style: TextStyle(color: Colors.white,fontSize: 20),),
                  )
                ],),
              const ExpansionTile(title: Text('Whatsapp',style: TextStyle(color: Colors.white)),leading: Icon(Icons.call,color: Colors.white),trailing:Icon(Icons.ads_click,color:Colors.white,),
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20,0,0),
                      child: Text('If you want to add some changes in Application or give any suggestions,then whatsapp message on this number:',
                      style: TextStyle(color: Colors.white),),
                    )
                  ],),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 150, 20),
                  child: Text('9671414679',style: TextStyle(color: Colors.white,fontSize: 20),),
                )
              ],),

            //Button for LogOut Start
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 300,
                  height: 80,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                      // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.lightBlueAccent])
                  ),
                  child: TextButton(
                      onPressed: (){signOut(context);},
                      child:const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Logout',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:Colors.blue
                        ),),
                      )
                  ),
                ),
              ),
            //Button for LogOut End
            ],
          )

          // Second Column End

        ],
      )
    );
  }
}

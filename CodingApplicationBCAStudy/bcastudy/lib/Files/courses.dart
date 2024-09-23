import 'package:bcastudy/Files/projects.dart';
import 'package:bcastudy/Files/theoryContent.dart';
import 'package:flutter/material.dart';
import '../Components/drawer.dart';
import 'homepage.dart';
class courses extends StatelessWidget {
  const courses({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const navigationBar(),
    );
  }
}
class navigationBar extends StatelessWidget {
  const navigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:drawerBox(),
      appBar:
      AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.cyan,
        iconTheme: const IconThemeData(color: Colors.cyan),
        title: const Center(child:Text('JCA',style: TextStyle(color: Colors.cyan,fontSize: 40),)
        ),
        toolbarHeight: 100,
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const homePage()));}, icon:const Icon( Icons.arrow_back)),
          IconButton(onPressed:(){
            showModalBottomSheet(context: context, builder: (BuildContext Context){
              return SizedBox(
                  height: 500,
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            side:const BorderSide(
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        color: Colors.blue,
                        elevation: 20,
                        child: ListTile(
                          mouseCursor: MouseCursor.defer,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          title:const Text("Home"),
                          leading:const Icon(Icons.home),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const homePage()));},
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            side:const BorderSide(
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        color: Colors.blue,
                        elevation: 20,
                        child: ListTile(
                          mouseCursor: MouseCursor.defer,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          title:const Text('Courses'),
                          leading: const Icon(Icons.add_box_sharp),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const courses()));},
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            side:const BorderSide(
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        color: Colors.blue,
                        elevation: 20,
                        child: ListTile(
                          mouseCursor: MouseCursor.defer,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          title:const Text('Projects'),
                          leading: const Icon(Icons.add_circle),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const projects()));},
                        ),
                      ),
                    ],
                  )
              );
            });
          } ,
              icon: const Icon(Icons.menu_book))
        ],
      ),
      body:Column(
        children: [
          const Center(
            child:Text('Courses',style: TextStyle(fontSize: 40,color: Colors.cyan),),
          ),
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (content)=>const theoryContent()));},
            icon:const Icon(Icons.folder),iconSize: 60,alignment: Alignment.topLeft,color: Colors.cyan,),
          const Text('Theory Content'),
          IconButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (content)=>const videoContent()));
            },
            icon:const Icon(Icons.video_call),iconSize: 60,alignment: Alignment.topLeft,color: Colors.grey,
          ),
          const Text('Video Content'),
        ],
      ) ,
    );
  }
}


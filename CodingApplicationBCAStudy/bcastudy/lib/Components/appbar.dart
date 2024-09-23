import 'package:bcastudy/Files/homepage.dart';
import 'package:flutter/material.dart';
import '../Files/courses.dart';
import '../Files/projects.dart';
class appbar extends StatelessWidget {
  const appbar({super.key,required this.text1,required this.text2,required this.text3});
  final String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.cyan,
      iconTheme: const IconThemeData(color: Colors.cyan),
      title: const Center(child:Text('JCA',style: TextStyle(color: Colors.cyan,fontSize: 40),)
      ),
      toolbarHeight: 100,
      actions: [
        IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon( Icons.arrow_back)),
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
                        title:Text(text1),
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
                        title:Text(text2),
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
                        title:Text(text3),
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
    );
  }
}

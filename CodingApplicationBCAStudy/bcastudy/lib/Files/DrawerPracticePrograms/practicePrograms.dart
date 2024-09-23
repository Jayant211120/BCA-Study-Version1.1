import 'package:flutter/material.dart';
import '../../Components/drawer.dart';
import '../courses.dart';
import '../homepage.dart';
import '../projects.dart';
class drawerPracticePrograms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Drawer End
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
            IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>drawerBox()));}, icon:const Icon( Icons.arrow_back)),
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
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Center(child:Text('Practice Programs',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 30,),),),
              Padding(
                padding:const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Colors.deepPurpleAccent,Colors.cyanAccent]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:const Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text( '1.Write a program to make a Armstrong Number',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text( '2.Write a program to make different Star,Pyramid Patterns using Arrays.',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text( '3.Find area of Triangle,Circle,Square,Trapezium etc',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text( '4.Sorting of Numbers.',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text( '5.Perform Linear Search or Binary Search.',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text( '6.Make your Resume using HTML and CSS ',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text( '7.Create your portfolio Website.',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
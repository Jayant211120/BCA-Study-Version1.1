import 'package:bcastudy/Files/Projects/HTML/html_projects.dart';
import 'package:flutter/material.dart';
import '../Components/drawer.dart';
import 'Projects/C++/cpp.dart';
import 'courses.dart';
import 'homepage.dart';
class projects extends StatelessWidget {
  const projects({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const project(),
    );
  }
}
class project extends StatelessWidget {
  const project({super.key});

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
            showModalBottomSheet(context: context, builder: (BuildContext context){
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
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            const Center(
              child:Text('Projects',style: TextStyle(fontSize: 40,color: Colors.cyan),),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const Cppprojects()));},style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/c++.webp'),)
                        ),
                        const Text('C++',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),
                    // Column(
                    //                     //   children: [
                    //                     //     Container(height: 100,width: 100,decoration: BoxDecoration(
                    //                     //       borderRadius: BorderRadius.circular(20),
                    //                     //       gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                    //                     //     ),
                    //                     //         child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                    //                     //             backgroundColor: Colors.cyan
                    //                     //         ),child:Image.asset('assets/Images/maths.png'),)
                    //                     //     ),
                    //                     //     const Text('Maths',style: TextStyle(fontSize: 20,height:4),),
                    //                     //   ],
                    //                     // ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const HtmlCSSprojects()));},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/html.png'),)

                        ),
                        const Text('HTML',style: TextStyle(fontSize: 20,height: 4),),
                      ],
                    ),
                  ]
              ),
            ),

            //  ----Second Row
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                // backgroundColor: Colors.cyan
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/css3.png'),)
                        ),
                        const Text('CSS',style: TextStyle(fontSize: 20,height:4)),
                      ],
                    ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/javascript.png'),)
                        ),
                        const Text('JS',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                  ]
              ),
            ),

            //   ----------Third Row
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children:[ Container(height: 100,width: 100,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                        // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                      ),
                          child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey
                          ),child:Image.asset('assets/Images/php.png'),)
                        // TextButton(onPressed: () {  },child:const Text('Maths',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,height: 6,),textAlign:
                        // TextAlign.center,
                        // ),
                        // ),
                      ),
                        const Text('PHP',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),
                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/maths.png'),)
                          // TextButton(onPressed: () {  },child:const Text('Maths',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,height: 6,),textAlign:
                          // TextAlign.center,
                          // ),
                          // ),
                        ),
                        const Text('MYSQL',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),
                  ]
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/C.jpg'),)
                        ),
                        const Text('C',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                    // --------------------
                    // Column(
                    //   children: [
                    //     Container(height: 100,width: 100,decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                    //     ),
                    //         child:ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const Cppprojects()));},style: ElevatedButton.styleFrom(
                    //             backgroundColor: Colors.cyan
                    //         ),child:Image.asset('assets/Images/c++.webp'),)
                    //     ),
                    //     const Text('C++',style: TextStyle(fontSize: 20,height:4),),
                    //   ],
                    // ),

                  ]
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/python.png'),)
                        ),
                        const Text('Python',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/dsa.png'),)
                        ),
                        const Text('DSA',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                  ]
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/networking.png'),)
                        ),
                        const Text('Networking',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          // gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                            ),child:Image.asset('assets/Images/computer.png'),)
                        ),
                        const Text('Computer',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),
                  ]
              ),
            ),
          ],
        ) ,
     ),
    );
  }
}


import 'package:bcastudy/Components/containerWithImage.dart';
import 'package:bcastudy/Files/C++/C++.dart';
import 'package:bcastudy/Files/projects.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Components/drawer.dart';
import 'HTML/html_content.dart';
import 'courses.dart';
class homePage extends StatelessWidget {
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
    scrollDirection: Axis.vertical,
      child:Column(
      children: [
        CarouselSlider(items: const [
          containerWithImage(image: 'assets/Images/slider1.webp'),
          containerWithImage(image: 'assets/Images/slider2.jpg'),
          containerWithImage(image: 'assets/Images/slider6.jpg'),
          containerWithImage(image: 'assets/Images/slider8.jpg'),

        ],
         options:CarouselOptions(
           height: 280.0,
           enlargeCenterPage: true,
           autoPlay: true,
           aspectRatio: 16 / 9,
           autoPlayCurve: Curves.fastOutSlowIn,
           enableInfiniteScroll: true,
           autoPlayAnimationDuration: const Duration(milliseconds: 600),
           viewportFraction: 0.8,
         )),

        //Focus Points Start
        const Padding(
          padding: EdgeInsets.fromLTRB(0,30,0,0),
          child: Text('Focus Points',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 30,),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            // padding: const EdgeInsets.all(10),
            child:Row(
          children: [
            Padding(padding: const EdgeInsets.all(40),child:FloatingActionButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const cplusplusContent()));
            },backgroundColor:Colors.transparent,heroTag:1,elevation:20,
            splashColor: Colors.cyan,hoverColor: Colors.cyan,
            child:Image.asset('assets/Images/python.png'))),
            Padding(padding: const EdgeInsets.all(40),child:FloatingActionButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const htmlContent()));
            },backgroundColor:Colors.transparent,heroTag:2,elevation:20,
            splashColor: Colors.cyan,hoverColor: Colors.cyan,
            child:Image.asset('assets/Images/html.png'))),
            Padding(padding: const EdgeInsets.all(40),child:FloatingActionButton(onPressed: (){},backgroundColor:Colors.transparent,heroTag:3,elevation:20,
            splashColor: Colors.cyan,hoverColor: Colors.cyan,
            child:Image.asset('assets/Images/javascript.png'))),
            Padding(padding: const EdgeInsets.all(40),child:FloatingActionButton(onPressed: (){},backgroundColor:Colors.transparent,heroTag:4,elevation:20,
            splashColor: Colors.cyan,hoverColor: Colors.cyan,
            child:Image.asset('assets/Images/php.png'))),
            Padding(padding: const EdgeInsets.all(40),child:FloatingActionButton(onPressed: (){},backgroundColor:Colors.transparent,heroTag:5,elevation:20,splashColor: Colors.cyan,
           hoverColor: Colors.cyan,
            child:Image.asset('assets/Images/css3.png'))),
          ],
        )),
        //Focus Points End

      //Topic description Start
        const Padding(
          padding: EdgeInsets.fromLTRB(0,30,0,30),
          child: Text('Topic Description',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 30,),),
        ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: 300,
                // margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
                // padding: EdgeInsets.all(30),
                decoration:const BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue,Colors.cyan]),
                  shape: BoxShape.rectangle,
                  boxShadow:[BoxShadow(
                    color: Colors.grey,//color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2),
                  )]
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(child: Text('Theory Content',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
              height: 100,
              width: 300,
           // margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration:const BoxDecoration(
               gradient: LinearGradient(colors: [Colors.blue,Colors.cyan]),
               shape: BoxShape.rectangle,
               boxShadow:[BoxShadow(
                 color: Colors.grey,//color of shadow
                 spreadRadius: 5, //spread radius
                 blurRadius: 7, // blur radius
                 offset: Offset(0, 2),
               )]
           ),
           child: const Padding(
             padding: EdgeInsets.all(20),
             child: Center(child: Text('Video Content',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
           ),
         ),
         ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 100,
            width: 300,
            // margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
            decoration:const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue,Colors.cyan]),
                shape: BoxShape.rectangle,
                boxShadow:[BoxShadow(
                  color: Colors.grey,//color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2),
                )]
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: Text('Practice Questions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 100,
            width: 300,
            // margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
            decoration:const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue,Colors.cyan]),
                shape: BoxShape.rectangle,
                boxShadow:[BoxShadow(
                  color: Colors.grey,//color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2),
                )]
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: Text('Good Quality Content',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
            ),
          ),
        ),
        //Topic Description End

      // Customer Review
        const Padding(
          padding: EdgeInsets.fromLTRB(0,30,0,30),
          child: Text('Students Review',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 30,),),
        ),
        ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            CarouselSlider(items: [
              Container(
                decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                height: 10,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child:const Text('[This app is very useful for me sir,because its covers various types of content for beginners as well as Advance student].\n"Thank You So Much Sir"\n'
                    'Rahul\n'
                    'MCA',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Container(
                decoration:BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                height: 10,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child:const Text('[Sir this app is very helpful because of other apps regarding coding cannot cover all types of courses just like this app;so its very helpful for me].\n'
                    '"Thank You Sir"\n'
                    'Virender\n'
                    'B.A',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ],
                options: CarouselOptions(
                  height: 300.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                )
            )
          ],
        ),
       // Customer Review End
      ]))
    );
  }
}


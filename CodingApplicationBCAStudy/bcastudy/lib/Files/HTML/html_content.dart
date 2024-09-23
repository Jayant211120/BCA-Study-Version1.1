
import 'package:bcastudy/Files/theoryContent.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../courses.dart';
import '../homepage.dart';
import '../projects.dart';
class htmlContent extends StatelessWidget {
  const htmlContent({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HTMLTheory(),
    );
  }
}
class HTMLTheory extends StatelessWidget {
  const HTMLTheory({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.cyan,
          iconTheme: const IconThemeData(color: Colors.cyan),
          title: const Center(child:Text('JCA',style: TextStyle(color: Colors.cyan,fontSize: 40),)
          ),
          toolbarHeight: 100,
          actions: [
            IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const theoryContent()));}, icon:const Icon( Icons.arrow_back)),
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
        body:SfPdfViewer.asset('assets/pdfs/HTML_Content.pdf')

    );
  }
}


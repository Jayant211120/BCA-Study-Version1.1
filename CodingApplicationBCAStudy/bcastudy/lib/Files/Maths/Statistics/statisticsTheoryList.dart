import 'package:bcastudy/Components/appbar.dart';
import 'package:bcastudy/Files/Maths/Statistics/statisticsInsideTheoryList/IntroductionToMaths.dart';
import 'package:bcastudy/Files/Maths/Statistics/statisticsInsideTheoryList/IntroductionToStatistics.dart';
import 'package:bcastudy/Files/Maths/Statistics/statisticsInsideTheoryList/Median.dart';
import 'package:bcastudy/Files/Maths/Statistics/statisticsInsideTheoryList/MedianPracticeQuestionsPart1.dart';
import 'package:flutter/material.dart';
class statisticsTheoryList extends StatelessWidget {
  const statisticsTheoryList({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const theory(),
    );
  }
}
class theory extends StatelessWidget {
  const theory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
          flexibleSpace:appbar(text1: 'Home', text2: 'Courses', text3: 'Projects')
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            const Center(
              child:Text('Statistics',style: TextStyle(fontSize: 40,color: Colors.cyan),),
            ),

            //Wrap the PDFs
            Wrap(
              children: [
                // child:SfPdfViewer.asset('assets/pdfs/Introduction of Maths.pdf')
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 20),
                  child: Expanded(

                  child:SizedBox(
                    width:200 ,
                    child: ListTile(
                      title:const Text('L-1'),
                      subtitle: const Text('Introduction of Maths'),
                      textColor: Colors.cyan,
                      // tileColor: Colors.white70,
                      leading: const Icon(Icons.picture_as_pdf_sharp,color: Colors.red,size: 40,),
                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const IntroductionToMaths()));},
                    ),
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 20),
                  child: SizedBox(
                    width:200 ,
                    child: ListTile(
                      title:const Text('L-2'),
                      subtitle: const Text('Introduction of Statistics'),
                      textColor: Colors.cyan,
                      leading: const Icon(Icons.picture_as_pdf_sharp,color: Colors.red,size: 40,),
                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const IntroductionToStatistics()));},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 20),
                  child: SizedBox(
                    width:200 ,
                    child: ListTile(
                      title:const Text('L-3'),
                      subtitle: const Text('Median(Basics)'),
                      textColor: Colors.cyan,
                      leading: const Icon(Icons.picture_as_pdf_sharp,color: Colors.red,size: 40,),
                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const MedianBasics()));},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 20),
                  child: SizedBox(
                    width:200 ,
                    child: ListTile(
                      title:const Text('L-4'),
                      subtitle: const Text('Median Questions(Part1)'),
                      textColor: Colors.cyan,
                      leading: const Icon(Icons.picture_as_pdf_sharp,color: Colors.red,size: 40,),
                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const MedianPracticeQuestionsPart1()));},
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                //   child: SizedBox(
                //     width:200 ,
                //     child: ListTile(
                //       title:const Text('PDF'),
                //       textColor: Colors.cyan,
                //       // tileColor: Colors.white70,
                //       leading: const Icon(Icons.picture_as_pdf_sharp,color: Colors.red,size: 40,),
                //       onTap: (){},
                //     ),
                //   ),
                // ),
              ],
            )
                  ]
              ),
            ),

        );
  }
}


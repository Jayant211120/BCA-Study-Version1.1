import 'package:bcastudy/Components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class MedianPracticeQuestionsPart1 extends StatelessWidget {
  const MedianPracticeQuestionsPart1({super.key});
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
        body:SfPdfViewer.asset('assets/pdfs/Practice Questions of Median(Part1).pdf')

    );
  }
}


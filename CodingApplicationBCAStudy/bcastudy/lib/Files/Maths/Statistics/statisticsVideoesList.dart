import 'package:bcastudy/Components/appbar.dart';
import 'package:bcastudy/Components/expansionTile.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../Components/drawer.dart';
class statisticsVideoList extends StatelessWidget {
  const statisticsVideoList({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:project(),
    );
  }
}
class project extends StatelessWidget {
   project({super.key});
  final YoutubePlayerController _controller1 = YoutubePlayerController(initialVideoId: 'Dvlc8_JFrcs',flags: const YoutubePlayerFlags(
    autoPlay: false
  ));
  final YoutubePlayerController _controller2 = YoutubePlayerController(initialVideoId: 'c6HS2zr1EP8',flags: const YoutubePlayerFlags(
    autoPlay: false
  ));
   final YoutubePlayerController _controller3 = YoutubePlayerController(initialVideoId: 'IvLhxN2TaUg',flags: const YoutubePlayerFlags(
       autoPlay: false
   ));
   final YoutubePlayerController _controller4 = YoutubePlayerController(initialVideoId: 'H04aRJwblG8',flags: const YoutubePlayerFlags(
       autoPlay: false
   ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
           expansionTile(nameOfTile:'Introduction of Maths', controller:_controller1),
           expansionTile(nameOfTile: 'Introduction of Statistics', controller:_controller2),
           expansionTile(nameOfTile: 'Median(Basics)', controller:_controller3),
           expansionTile(nameOfTile: 'Median Practice Questions(Part1)', controller:_controller4),
          ],
        ) ,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class expansionTile extends StatelessWidget {
  const expansionTile({super.key,required this.nameOfTile,required this.controller});
 final String nameOfTile;
 final controller;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(title: Text(nameOfTile),
      leading: const Icon(Icons.video_call),
      collapsedBackgroundColor: Colors.black,
      backgroundColor: Colors.black,
      collapsedTextColor: Colors.cyan,
      textColor: Colors.lightBlueAccent,
      collapsedIconColor: Colors.cyan,
      iconColor: Colors.lightBlueAccent,
      trailing: IconButton(onPressed: () { Navigator.pop(context); }, icon: const Icon(Icons.arrow_back),),
      tilePadding: EdgeInsets.all(30),
      children: [
        YoutubePlayer(
          controller: controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: const ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
      ],
    );
  }
}

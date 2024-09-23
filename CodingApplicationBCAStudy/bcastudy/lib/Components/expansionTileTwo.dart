import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class expansionTileTwo extends StatelessWidget {
  const expansionTileTwo({super.key,required this.nameOfTile,required this.serialNumber,required this.codeImage1,required this.codeImage2,
  required this.outputImage});
  final String nameOfTile;
  final String serialNumber;
  final String codeImage1;
  final String codeImage2;
  final String outputImage;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(title: Text(nameOfTile),
      leading:Text(serialNumber,style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.cyan
      ),),
      collapsedBackgroundColor: Colors.black,
      backgroundColor: Colors.black,
      collapsedTextColor: Colors.cyan,
      textColor: Colors.lightBlueAccent,
      collapsedIconColor: Colors.cyan,
      iconColor: Colors.lightBlueAccent,
      // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
      tilePadding: const EdgeInsets.all(30),
      children: [
        Image.asset(codeImage1),
        Image.asset(codeImage2),
        Image.asset(outputImage),
              ],
    );
  }
}

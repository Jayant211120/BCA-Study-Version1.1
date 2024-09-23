import 'package:flutter/material.dart';
class containerWithImage extends StatelessWidget {
  const containerWithImage({super.key,required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(90)),
          shape: BoxShape.rectangle,
          color: Colors.cyan
      ),
      child:Image.asset(image,fit: BoxFit.cover,) ,
    );
  }
}

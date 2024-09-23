import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//TextField Widget Start
class textfield extends StatelessWidget {
  textfield({super.key,required this.obscuretext,required this.hinttext,this.controller});
  final bool obscuretext;
  final String hinttext;
  final controller;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
          child:Form(
            key:_formKey,
            child:TextFormField(
            obscureText: obscuretext,
            cursorColor: Colors.blue,
            inputFormatters: [
              LengthLimitingTextInputFormatter(30)
            ],
            validator: (value){
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            controller:controller ,
            style: const TextStyle(color: Colors.blue,fontWeight:FontWeight.bold),
            decoration: InputDecoration(
              hintText: hinttext,
              enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20),
                  borderSide:const BorderSide(color: Colors.grey,width: 2)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20),
                  borderSide:const BorderSide(color: Colors.blue,width: 2)
              ),
            ),
          ),
          ),
    );
  }
}

// Password TextField Start
class passwordtextfield extends StatelessWidget {
  const passwordtextfield({super.key,required this.hinttext,this.controller});
  final String hinttext;
  final controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
    child: TextFormField(
    obscureText: true,
    obscuringCharacter: '*',
    cursorColor: Colors.blue,
    inputFormatters: [
    LengthLimitingTextInputFormatter(20)
    ],
    controller: controller,
    style: const TextStyle(color: Colors.blue,fontWeight:FontWeight.bold),
    decoration: InputDecoration(
    hintText: hinttext,
    enabledBorder: OutlineInputBorder(
    borderRadius:BorderRadius.circular(20),
    borderSide:const BorderSide(color: Colors.grey,width: 2)
),
focusedBorder: OutlineInputBorder(
borderRadius:BorderRadius.circular(20),
borderSide:const BorderSide(color: Colors.blue,width: 2)
),
),
),
);
  }
}
// Password TextField End

//TextField Label Start
class textfieldlabel extends StatelessWidget {
  const textfieldlabel({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: Text(text,style: const TextStyle(color: Colors.grey,fontSize: 20,),),
        );
  }
}
//TextField Label End

//Button Start
class button extends StatelessWidget {
  const button({super.key,required this.text,required this.callback});
  final String text;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 80,
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.lightBlueAccent])
        ),
        child: TextButton(
            onPressed: (){callback();},
            child:Padding(
              padding: const EdgeInsets.all(10),
              child: Text(text,style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              ),),
            )
        ),
      ),
    );
  }
}
//Button End
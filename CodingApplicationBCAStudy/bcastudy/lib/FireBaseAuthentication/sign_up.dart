import 'package:bcastudy/FireBaseAuthentication/authenticationFunctions.dart';
import 'package:bcastudy/FireBaseAuthentication/sign_in.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Components/textFieldWidget.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp2(),
    );
  }
}
class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignIn2State();
}

class _SignIn2State extends State<SignUp2> {
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  //Instance Controller for Control data into Realtime Database
  final databaseReference=FirebaseDatabase.instance.ref('StoreData');
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Row Start for SignIn and Logo Start
            Row(
              children: [
                //Sign-In Text Customization Start
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 80, 0, 0),
                  child: Text('Sign Up',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue)),
                ),
                //Sign-In Customization End

                // Logo Customization Start
                Padding(
                  padding: const EdgeInsets.fromLTRB(65, 80, 0, 0),
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Icon(Icons.face_sharp,color: Colors.white,size: 60,),
                  ),
                ),
                //Logo Customization End

                //Row End
              ],
            ),
            //SignIn and Logo End

            //Name Label for TextField Start
            const textfieldlabel(text: 'Name(Max Size:30)'),
            //Name Label for TextField End

            //Name TextField Start
            textfield(obscuretext: false, hinttext:"ABC",controller:_nameController,),
            //Name TextField End

            //Email Label for TextField Start
            const textfieldlabel(text: 'Email(Max Size:30)'),
            //Email Label for TextField End

            //Email TextField Start
            textfield(obscuretext: false,hinttext:'abc@gmail.com',controller: _emailController),
            //Email TextField End

            //Password Label TextField Start
            const textfieldlabel(text: 'Password(Max Size:20,Min Digit:6)'),
            //Password Label TextField End

            //Password TextFiled Start
            passwordtextfield(hinttext: '*****',controller: _passwordController,),
            //Password TextField End

            //Content After Password Start
            const Padding(
              padding: EdgeInsets.all(10),
              child: Wrap(
                children: [
                  Text("Creating an account means you're okay with our Terms of Service and our Privacy Policy",
                    style: TextStyle(
                        color: Colors.grey
                    ),)
                ],
              ),
            ),
            //Content After Password End

            // Button Start
            button(text: 'Create An Account', callback: (){createUserWithEmailAndPassword(
                _nameController.text,
                _emailController.text,
                _passwordController.text,
                databaseReference,
                context);
              //This line for add new data after storing previous data into relatime database
            _nameController.clear();_emailController.clear();_passwordController.clear();FocusScope.of(context).unfocus();
            }),
            // Button End

            // SignUp Content Start
            const Center(
              heightFactor: 2,
              child: Text("Sign up with",style: TextStyle(
                  color: Colors.grey
              ),),
            ),
            //SignUp Content End

            //Button for next Page Start
            Padding(
              padding: const EdgeInsets.fromLTRB(112, 0,0,0),
              child:Row(
                children: [
                  const Text("Sign in with:",style: TextStyle(color: Colors.grey),),
                  TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignIn()));},
                      child:const Text('SignIn',style: TextStyle(color: Colors.blue),))
                ],
              ),
            )
            //Button for next Page End

            //Column End
          ],
        ),
      ),
    );
  }
}


import 'package:bcastudy/Components/textFieldWidget.dart';
import 'package:bcastudy/FireBaseAuthentication/authenticationFunctions.dart';
import 'package:bcastudy/FireBaseAuthentication/sign_up.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn2(),
    );
  }
}
class SignIn2 extends StatefulWidget {
  const SignIn2({super.key});

  @override
  State<SignIn2> createState() => _SignIn2State();
}

class _SignIn2State extends State<SignIn2> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
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
                  child: Text('Sign In',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue)),
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

            //Email Label for TextField Start
            const textfieldlabel(text: 'Email(Max Size:30)'),
            //Email Label for TextField End

            //Email TextField Start
            textfield(obscuretext: false, hinttext:"ABC@gmail.com",controller:_emailController),
            //Email TextField End

            //Password Label TextField Start
            const textfieldlabel(text: 'Password(Max Size:20,Min Digit 6)'),
            //Password Label TextField End

            //Password TextFiled Start
            passwordtextfield(hinttext: '*****',controller: _passwordController),
            //Password TextField End

            //Forgot Password Start
            // GestureDetector(
            //     onTap: (){},
            //     child:const Padding(
            //         padding:EdgeInsets.fromLTRB(230, 10, 0, 10),
            //     child:Text('Forgot Password',style: TextStyle(color: Colors.blue),)
            //     )
            // ),
            //Forgot Password End

            //Content After Password Start
            const Padding(
              padding: EdgeInsets.all(10),
              child: Wrap(
                children: [
                  Text("Sign in your account for successfully access of application,your id and password are save in our database.",
                    style: TextStyle(
                        color: Colors.grey
                    ),)
                ],
              ),
            ),
            //Content After Password End

            // Button Start
            Center(
              child: Container(
                width: 300,
                height: 80,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.lightBlueAccent])
                ),
                child: TextButton(
                    onPressed: (){signInWithEmailAndPassword(_emailController.text,_passwordController.text, context);},
                    child:const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Sign In ->',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:Colors.white
                      ),),
                    )
                ),
              ),
            ),
            // Button End

            // SignUp Content Start
            const Center(
              heightFactor: 2,
              child: Text("or sign in with",style: TextStyle(
                  color: Colors.grey
              ),),
            ),
            //SignUp Content End
            
           //Google Authentication Start 
           button(text: 'Google Sign In', callback:(){FirebaseService.signInwithGoogle(context);}),
           //Google Authentication End
            
            //Button for go to SignUp Page Start
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 0,0,0),
              child:Row(
                children: [
                  const Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
                  TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUp()));},
                      child:const Text('SignUp',style: TextStyle(color: Colors.blue),))
                ],
              ),
            )
            //Button for go to SignUp Page End

            //Column End
          ],
        ),
      ),
    );
  }
}


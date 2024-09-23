import 'package:bcastudy/Files/homepage.dart';
import 'package:bcastudy/FireBaseAuthentication/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quickalert/quickalert.dart';

// SignUp Function Start
createUserWithEmailAndPassword(String name,String emailAddress,String password,databaseReference,BuildContext context) async {
  try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    //Taking User Data
    User? user=credential.user;
    //Checking textfields are filled properly or not
    if(name.isEmpty || emailAddress.isEmpty || password.isEmpty){
      QuickAlert.show(context: context, type: QuickAlertType.error,text: 'TextFields are not fill');
    }
    if(user != null){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignIn()));
      //DataBase Reference is used to store data into realtime database
      databaseReference.child(DateTime.now().microsecond.toString()).set({'id':DateTime.now().microsecond.toString(),
        'Name':name,'Email':emailAddress,'Password':password});
      QuickAlert.show(context:context, type: QuickAlertType.success,text: 'Sign Up Successfully');
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      QuickAlert.show(context:context, type: QuickAlertType.error,text: 'Weak Password');
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      QuickAlert.show(context:context, type: QuickAlertType.error,text: 'Account Already Exists');
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
// SignUp Function End

//SignIn Function Start
signInWithEmailAndPassword(String emailAddress,String password,BuildContext context) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password
    );
    User? user=credential.user;
    if(user != null){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
      QuickAlert.show(context:context, type: QuickAlertType.success,text: 'Sign In Successfully');
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      QuickAlert.show(context:context, type: QuickAlertType.error,text: 'User Not Found');
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      QuickAlert.show(context:context, type: QuickAlertType.error,text: 'Wrong Password');
      print('Wrong password provided for that user.');
    }
  }
}
//SignIn Function End

//LogOut Function Start
signOut(BuildContext context) async {
  Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignIn()));
  QuickAlert.show(context: context, type: QuickAlertType.success,text:'Logout Successfully');
  await FirebaseAuth.instance.signOut();
}
//LogOut Function End

//Google Authentication Function Start
class FirebaseService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  static Future<String?> signInwithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      await _auth.signInWithCredential(credential);
      QuickAlert.show(context: context, type: QuickAlertType.success,text: 'Google SignIn Successfully');
    } on FirebaseAuthException catch (e) {
      print(e.message);
      throw e;
    }
  }

  //Google SignOut Function Start
  Future<void> signOutFromGoogle() async{
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
  //Google SignOut Function End
}
//Google Authentication Function End
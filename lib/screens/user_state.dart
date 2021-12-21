
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/auth/sign_in.dart';
import 'package:news_app/screens/home.dart';

class UserState extends StatelessWidget {
  const UserState({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream:  FirebaseAuth.instance.authStateChanges(),
        builder: (contet,userSnapshot){
          if (userSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (userSnapshot.connectionState == ConnectionState.active) {
            if (userSnapshot.hasData) {
              print('The user is already logged in');
              return const HomeScreen();
            } else  {
              print('The user didn\'t login yet');
              return const SignInScreen();
            }
          } else if (userSnapshot.hasError) {
            return const Center(
              child: Text('Error occured 1'),
            );
          }
          return  const Center(
              child: Text('Error occured 2'),
            );
        }, 
        );
  }
}

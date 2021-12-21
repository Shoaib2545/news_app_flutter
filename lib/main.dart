import 'package:flutter/material.dart';
import 'package:news_app/screens/auth/sign_in.dart';
import 'package:news_app/screens/auth/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/screens/user_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.teal,
      ),
      home: const UserState(),
      routes: {
        'SignInScreen': (ctx) => const SignInScreen(),
        'SignUpScreen': (ctx) => const SignUpScreen(),
        'HomeScreen': (ctx) => const HomeScreen(),
      },
    );
  }
}

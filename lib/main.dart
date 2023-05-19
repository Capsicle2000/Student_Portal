import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottomnavbar.dart';
import 'package:flutter_app/loginpage.dart';
import 'package:flutter_app/auth.dart';
import 'package:flutter_app/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // test
  // test
  // test
  // test
  // test
  // test
  // test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/loginpage',
      routes: {
        '/': (context) => const Auth(),
        '/loginpage': (context) => const Loginpage(),
        '/register': (context) => const RegisterScreen(),
        '/bottomnavbar': (context) => const BottomNavBar(),
      },
    );
  }
}

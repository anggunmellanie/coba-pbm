import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vastraloka/screens/landing_page.dart';
import 'package:vastraloka/screens/navigation.dart';
import 'package:vastraloka/screens/splash_page.dart';
import 'package:vastraloka/screens/login_page.dart'; // Import halaman login
import 'package:vastraloka/screens/home_page.dart'; // Import halaman home
import 'package:vastraloka/screens/signup.dart'; // Import halaman signup
import 'package:vastraloka/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vastraloka',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(),
        '/login': (context) => LoginPage(), // Tambahkan route untuk login
        '/home': (context) => Navigation(), // Tambahkan route untuk home
        '/signup': (context) => SignUpPage(),
        '/landing': (context) =>  LandingPage()// Tambahkan route untuk sign up
      },
    );
  }
}

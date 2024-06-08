// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:vastraloka/screens/landing_page.dart';
// import 'package:vastraloka/screens/navigation.dart';
// import 'package:vastraloka/screens/splash_page.dart';
// import 'package:vastraloka/screens/login_page.dart';
// import 'package:vastraloka/screens/signup.dart'; 
// import 'package:vastraloka/firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Vastraloka',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => SplashView(),
//         '/login': (context) => LoginPage(), 
//         '/home': (context) => Navigation(), 
//         '/signup': (context) => SignUpPage(),
//         '/landing': (context) =>  LandingPage(),
//       }
//     );
//   }
// }

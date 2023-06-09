import 'package:flutter/material.dart';
import 'package:naqi_app/auth.dart';
import 'package:naqi_app/screens/home_screen.dart';
import 'package:naqi_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:naqi_app/screens/signup_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('ar','AE'), // arabic
  ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // home: const Auth(),
      routes: {
        '/':(context) => const Auth(),
        'homeScreen':(context) => const HomeSceen(),
        'signupScreen':(context) => const SignupScreen(), 
        'loginScreen':(context) => const LoginScreen(),
      },
    );
  }
}

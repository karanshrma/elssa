import 'package:elssa/features/auth/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    initialisation();
  }

  void initialisation() async{
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elssa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFDFEFE), // Global scaffold background
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFDFEFE), // Global AppBar background
          elevation: 0, // Optional: removes shadow for cleaner look
          foregroundColor: Colors.black, // Optional: sets text/icon color
        ),
      ),
      home: SignupScreen(),
    );
  }
}
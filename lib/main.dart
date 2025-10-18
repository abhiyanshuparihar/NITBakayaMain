import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nitbakaya/Common%20Screens/Splash%20Screen/splashScreen.dart';
import 'package:nitbakaya/firebase_options.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bakaya',
        // Use a StreamBuilder to listen for auth state changes
        home:SplashScreen()
    );
  }
}

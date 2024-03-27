import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:realestate/screens/signUp_screen.dart';
import 'package:realestate/screens/signup_screen.dart';
import 'package:realestate/screens/welcome_screen.dart';


// Entry point for the Flutter app, initializing Flutter and Firebase before running the app.

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
// Future<void> main() async {
//       await dep.init();

//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: const FirebaseOptions(
//     apiKey: 'AIzaSyB74ApO7cu1JagRHvyeqaWu20LSwCSibBc', 
//     appId: '1:6473172936:android:d88902e4dbfda050c7e2fd', 
//     messagingSenderId:  '6473172936	',
//     projectId: 'lmsapp-9aed7'
//     )).then((value) => Get.put(AuthController()));
//   runApp(const MyApp());
// }
Future<void> main() async {

   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: 'AIzaSyAKTTmOUYhgN8v-H9begR_tUBeiz2z2ppU', 
    appId: '1:81934242185:android:9c82a080cc0572346b5158', 
    messagingSenderId: '81934242185', 
    projectId: "realestate-41f3e")).then((value) => Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen() 
    );
  }
}

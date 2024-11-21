import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_login_signup1/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_login_signup1/src/utils/themes/theme.dart';
import 'firebase_options.dart';


Future<void> main() async{
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // intialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);

  //main app starts here
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TeamAppTheme.lightTheme,
      // ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const LoginScreen(),
    );
  }
}
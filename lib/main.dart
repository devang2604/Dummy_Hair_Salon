import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hairsalon3/providers/auth_provider.dart';
import 'screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAvy0HBjJ2z3jgqUdCWonDS9McywMfzq1Y',
      appId: "1:1051650155929:android:9b0b0b0b0b0b0b0b0b0b0b",
      messagingSenderId: "693908755030",
      projectId: "hairsalon2-4703b",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      ),
    );
  }
}

import 'package:dailyflix/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DailyFlix',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 24),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
        ),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          surface: Colors.black,
        ),
        fontFamily: GoogleFonts.ptSans().fontFamily,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

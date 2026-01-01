import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// TODO: Ensure this import matches your package name (check your pubspec.yaml if 'panahon_longexam1' is correct)
import 'package:panahon_longexam1/screens/home_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil for responsive design
    return ScreenUtilInit(
      designSize: const Size(414, 896), // Use the design size from your Figma/Design (Standard is usually 375x812 or 414x896)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Exam',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          // This tells Flutter to start with HomeScreen instead of "Hello World"
          home: const HomeScreen(), 
        );
      },
    );
  }
}
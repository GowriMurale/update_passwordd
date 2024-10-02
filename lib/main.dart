import 'package:flutter/material.dart';
import 'Navigation_bar.dart';
import 'mobile.dart';
import 'update.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  ResponseScreen(),
    );
  }
}

class ResponseScreen extends StatelessWidget {
  const ResponseScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return Mobile();
          } else if (constraints.maxWidth < 1024) {
            // Tablet layout
            return UpdatePasswords();
          } else {
            // Desktop layout
            return UpdatePasswords();
          }
        },
      ),
    );
  }
}

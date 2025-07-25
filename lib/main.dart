import 'package:event_myntra/features/authentication/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EventMyntraApp());
}

class EventMyntraApp extends StatelessWidget {
  const EventMyntraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Myntra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy-Regular',
        primarySwatch: Colors.deepPurple,
      ),
      home: const LoginScreen(),
    );
  }
}



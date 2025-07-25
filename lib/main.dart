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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Myntra Home'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Event Myntra!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

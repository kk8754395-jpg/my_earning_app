import 'package:flutter/material.dart';

void main() {
  runApp(const MyEarningApp());
}

class MyEarningApp extends StatelessWidget {
  const MyEarningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Earning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: const Text('My Earning App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to My Earning App!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Task function will go here
              },
              child: const Text('Start Task'),
            ),
          ],
        ),
      ),
    );
  }
}

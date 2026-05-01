import 'package:flutter/material.dart';

void main() {
  runApp(MyIncomeApp());
}

class MyIncomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int balance = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("স্মার্ট ইনকাম অ্যাপ"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Banner Ad Area
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 60,
            width: double.infinity,
            color: Colors.grey[200],
            child: Center(
              child: Text(
                "বিজ্ঞাপন লোড হচ্ছে...\nID: 4330202835", 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.blueGrey),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.monetization_on, size: 80, color: Colors.orange),
                  SizedBox(height: 10),
                  Text("আপনার বর্তমান ব্যালেন্স", style: TextStyle(fontSize: 18)),
                  Text("$balance পয়েন্ট", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        balance += 5;
                      });
                    },
                    icon: Icon(Icons.touch_app),
                    label: Text("পয়েন্ট সংগ্রহ করুন"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.blue[50],
            child: Center(child: Text("গুগল অ্যাডমব দ্বারা পরিচালিত", style: TextStyle(fontSize: 10))),
          ),
        ],
      ),
    );
  }
}

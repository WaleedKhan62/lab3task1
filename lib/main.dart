import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Widget'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Image.asset(
                  '../assets/download.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 40),
                    SizedBox(width: 10),
                    Text(
                      'Favorite Pic ?',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.share, color: Colors.blue, size: 40),
                    SizedBox(width: 10),
                    Text(
                      'Share it',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Button Pressed!')),
                  );
                },
                child: const Text('Click Here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
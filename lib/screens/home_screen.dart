import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height: 50, width: 150),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {},
              child: IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                iconSize: 30,
                onPressed: () {},
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.blue),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}

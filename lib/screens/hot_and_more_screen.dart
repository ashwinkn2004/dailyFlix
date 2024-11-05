import 'package:flutter/material.dart';

class HotAndMoreScreen extends StatefulWidget {
  const HotAndMoreScreen({super.key});

  @override
  State<HotAndMoreScreen> createState() => _HotAndMoreScreenState();
}

class _HotAndMoreScreenState extends State<HotAndMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hot and More Screen'),
      ),
    );
  }
}

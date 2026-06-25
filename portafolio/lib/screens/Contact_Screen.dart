import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Text("PAnATALLA CONTA" , style: TextStyle(color: Colors.white , fontSize: 25),
        ),
      ),
    );
  }
}
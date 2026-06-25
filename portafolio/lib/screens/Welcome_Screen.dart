import 'package:flutter/material.dart';
import 'portafolio_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => PortafolioScreen(),
              ),
            );
          },
          child: Text('ENTRAR'), 
        ),
     ),
  );
  }
}
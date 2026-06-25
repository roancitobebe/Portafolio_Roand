import 'package:flutter/material.dart';
import 'package:portafolio/screens/welcome_screen.dart'; 


void main() {
  runApp(MiPortafolioApp());
}


class MiPortafolioApp extends StatelessWidget {
  const MiPortafolioApp({super.key});
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // le damos un titulo interno a la aplicacion
      title: 'Portafolio',
      home: WelcomeScreen(), 
    );
  }
}
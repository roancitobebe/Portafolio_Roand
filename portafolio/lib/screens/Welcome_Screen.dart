import "package:flutter/material.dart";

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final Color cAzulMarino = Color(0xFF1B263B); 

    
    return Scaffold(
      backgroundColor: cAzulMarino ,
      
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity ,
           height: double.infinity ,
           child: Image.asset("assets/portada.gif" , fit: BoxFit.cover),
          ),

          
          Center(
            child: GestureDetector(
             onTap: () {
                Navigator.pushReplacementNamed(context , "home");
              },
             
             child: Container(
                width: 250 ,
              height: 100 ,
                color: Colors.transparent ,
            ),
            ),
          ),

      ],
      ),
  );
  }
}
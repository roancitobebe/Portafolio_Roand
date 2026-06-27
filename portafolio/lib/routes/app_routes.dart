import "package:flutter/material.dart";
import "../screens/portafolio_screen.dart";
import "../screens/contact_screen.dart";
import "../screens/welcome_screen.dart";


class AppRoutes {
  
  static const initialRoute = "welcome";

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    return {
      "welcome" : (BuildContext context) => const WelcomeScreen() ,
      "home" : (BuildContext context) => const PortafolioScreen() ,
      "contacto" : (BuildContext context) => const ContactScreen() ,
    };
  }
}
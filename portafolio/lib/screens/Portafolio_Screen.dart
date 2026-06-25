import "package:flutter/material.dart";
import "contact_screen.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// estructura principal
class PortafolioScreen extends StatelessWidget {
  const PortafolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // banner y avatar
              Stack(
                clipBehavior: Clip.none,
              alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.indigo[300],
                    child: Center(
                      child: Text(
                        "Espacio para tu Banner / GIF animado", 
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 46,
                        backgroundColor: Colors.indigo,
                        child: Icon(Icons.person, size: 50, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60),

              // info y estadisticas
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Roand Rodriguez", 
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.verified, color: Colors.blue, size: 20),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text("@roancitobebe", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(height: 10),
                    Text(
                      "Estudiante de Ingeniería de Sistemas o cajero de MCDonnals",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text("14,89bs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Cuenta Bancaria", style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text("Prog III", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Materia", style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text("6", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Trimestre", style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),],
              ),

              SizedBox(height: 20),

              // navegacion a contacto
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactScreen()),
                    );
                  },
                  icon: FaIcon(FontAwesomeIcons.addressBook), 
                  label: Text("Formas de contacto"), 
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45),
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 25),

              // tarjetas interactivas
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, 
                  crossAxisSpacing: 15, 
                  mainAxisSpacing: 15, 
                  childAspectRatio: 0.85, 
                  children: [
                    
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Sobre mí"),
                              content: Text("AAAA super bigote"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("CERRAR"),),
                              ],
                            );
                          }, );
                      },
                      child: Card(
                        elevation: 4, 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                            FaIcon(FontAwesomeIcons.ghost, size: 50, color: Colors.indigo),
                            SizedBox(height: 10),
                            Text("Sobre mí", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
            ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Mis Hobbies"),
                              content: Text("todiava no lo e pensado bien :)"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("CERRAR"),
                          ),
                          ],
               );
                          },
                        );},
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.gamepad, size: 50, color: Colors.indigo),
                            SizedBox(height: 10),
                            Text("Hobbies", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                       ],
                        ),
                      ), ),

                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                         return AlertDialog(
                              title: Text("¿Qué hago?"),
                              content: Text("comer"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("CERRAR"),
                                ), ],
                );
                          },
                  );
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.utensils, size: 50, color: Colors.indigo),
                            SizedBox(height: 10),
                            Text("¿Qué hago?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),),
                    ),

                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Comentarios"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min, 
                     children: [
                                  Text("Deja un comentario sobre mi portafolio:"),
                                  SizedBox(height: 15),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "escribe aqui...",
                                      border: OutlineInputBorder(),
                                 ),
                                ),
                          ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("ENVIAR"),
                                ),
                     ],
                );
                          },
                        );
                      },
          child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.paperPlane, size: 50, color: Colors.indigo),
                            SizedBox(height: 10),
                            Text("Comentarios", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                    ),
                  ),
                   ),

                  ],
               ),
           ),

              SizedBox(height: 40), 
            ],
         ),
      ),
   ),
    );
  }
}
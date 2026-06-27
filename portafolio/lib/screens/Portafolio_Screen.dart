import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class PortafolioScreen extends StatelessWidget {
  const PortafolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // armo mi paleta de colores
    final Color cAzulMarino = Color(0xFF1B263B); 
    final Color cCrema = Color(0xFFF8E1B4);
    final Color cPurpura = Color(0xFF8758CA);
    final Color cAmarillo = Color(0xFFF0CA68);

    return Scaffold(
      backgroundColor: cAzulMarino,
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context , "contacto");
        },
        backgroundColor: cAmarillo ,
        child: FaIcon(FontAwesomeIcons.addressBook , color: cAzulMarino),
      ),
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // armo mi banner y foto
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
             children: [
                  SizedBox(
                   height: 150,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/banner.gif",
                      fit: BoxFit.cover,
               ),
                  ),
                  Positioned(
                    top: 100,
                    child: CircleAvatar(
                      radius: 50,
                   backgroundColor: cAmarillo,
                      child: CircleAvatar(
                        radius: 46,
                        backgroundImage: AssetImage("assets/perfil.png"),
                   ),
                 ),
             ),
                ],),

              SizedBox(height: 60),

              // mis datos personales 
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Roand Rodriguez", 
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: cCrema)
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.verified, color: cAmarillo, size: 20),
                      ],),
                    SizedBox(height: 5),
                    Text("@roancitobebe", style: TextStyle(color: cCrema.withOpacity(0.7), fontSize: 16)),
                 SizedBox(height: 10),
                    Text(
                      "Estudiante de Ingeniería de Sistemas o cajero de MCDonnals",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                ],
                ),
           ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: cCrema,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text("14,89bs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: cAzulMarino)),
                          Text("Cuenta", style: TextStyle(fontSize: 12, color: cPurpura)),
                     ],
               ),
                  ),
                  ),
                  Card(
                    color: cCrema,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text("Prog III", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: cAzulMarino)),
                          Text("Materia", style: TextStyle(fontSize: 12, color: cPurpura)),
                        ],
                  ),
                    ),),
                  Card(
                    color: cCrema,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                   padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text("6", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: cAzulMarino)),
                          Text("Trimestre", style: TextStyle(fontSize: 12, color: cPurpura)),
                        
                        ],
                      ),
                    ),
                  ),],),

              SizedBox(height: 25),

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
                           return Dialog(
                             backgroundColor: cCrema,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: Container(
                                padding: EdgeInsets.all(16),
                                child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RotatedBox(
                                  quarterTurns: 3,
                                      child: Text(
                                        "SOBRE MI", 
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: cAzulMarino, letterSpacing: 5)
                                    ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                           clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Image.asset("assets/yo.jpg", fit: BoxFit.contain),
                                         ),
                                          SizedBox(height: 15),
                                        Text(
                                            "Soy Roand, actualmente pela bolas y estudiante de Ingeneria de Sistemas soy bastente distraido pero siempre me gusta aprender cosas nuevas. ", 
                                            style: TextStyle(color: cAzulMarino, fontSize: 14)
                                          ),
                                        SizedBox(height: 20),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: TextButton(
                                          onPressed: () => Navigator.pop(context),
                                              child: Text("CERRAR", style: TextStyle(color: cPurpura, fontWeight: FontWeight.bold)),
                                            ),
                                          
                                          ),
                                        ],
                                 ),),
                                  ],),
                              ),);      },
                       
                        );
                      },
                      child: Card(
                       color: cCrema,
                        elevation: 6, 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, 
                            children: [
                              FaIcon(FontAwesomeIcons.ghost, size: 50, color: cPurpura),
                             SizedBox(height: 10),
                              Text("Sobre mi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: cAzulMarino)),
                            ],),
                     ),
                    ),
                    ),

                   GestureDetector(
                      onTap: () {
                        showDialog(
                         context: context,
                          builder: (context) {
                           return Dialog(
                              backgroundColor: cCrema,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           child: Container(
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Text(
                                        "HOBBIES", 
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: cAzulMarino, letterSpacing: 5)
                                     ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                           clipBehavior: Clip.antiAlias,
                                           decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Image.asset("assets/yococacola.jpg", fit: BoxFit.contain),
                                         ),
                                          SizedBox(height: 15),
                                          Text(
                                           "Me gusta los juegos viejitos, me gusta desarmar cosas y hacer cosas que tal vez no sean muy utiles en el momento pero son cheveres.", 
                                           style: TextStyle(color: cAzulMarino, fontSize: 14)
                                          ),
                                        SizedBox(height: 20),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: TextButton(
                                              onPressed: () => Navigator.pop(context),
                                              child: Text("CERRAR", style: TextStyle(color: cPurpura, fontWeight: FontWeight.bold)),
                                            ),
                                          
                                          ),
                                        ],
                                 ),),
                                  ],),
                              ),);  },
                        );},
                      child: Card(
                        color: cCrema,
                       elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                              FaIcon(FontAwesomeIcons.gamepad, size: 50, color: cPurpura),
                              SizedBox(height: 10),
                              Text("Hobbies", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: cAzulMarino)),
                            ],
                          ),
                        ),
                      ),),

                    GestureDetector(
                      onTap: () {
                        showDialog(
                      context: context,
                          builder: (context) {
                          return Dialog(
                              backgroundColor: cCrema,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: Container(
                                padding: EdgeInsets.all(16),
                              child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Text(
                                         "QUE HAGO", 
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: cAzulMarino, letterSpacing: 5)
                                      ),
                                    ),
                                 SizedBox(width: 15),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                         Container(
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Image.asset("assets/triunfo.jpg", fit: BoxFit.contain),
                                      ),
                                          SizedBox(height: 15),
                                       Text(
                                            "Actualmente me dedico a estudiar y la creacion de servidores caseros sin presupuesto y me considero catador de comida profesional.", 
                                            style: TextStyle(color: cAzulMarino, fontSize: 14)
                                      ),
                                          SizedBox(height: 20),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: TextButton(
                                              onPressed: () => Navigator.pop(context),
                                              child: Text("CERRAR", style: TextStyle(color: cPurpura, fontWeight: FontWeight.bold)),
                                            ),),],
                                      ),
                                    ),
                                  ],),),
                            );
                          },);
                      },
                      child: Card(
                        color: cCrema,
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                              FaIcon(FontAwesomeIcons.utensils, size: 50, color: cPurpura),
                        SizedBox(height: 10),
                              Text("¿Que hago?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: cAzulMarino)),
                            ],
                          ),      ),
            ),
                    ),

                    // comentarios
                    GestureDetector(
                      onTap: () {
                    showDialog(
                          context: context,
                      builder: (context) {
                            return AlertDialog(
                          backgroundColor: cCrema,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              title: Text("Comentarios", textAlign: TextAlign.center, style: TextStyle(color: cAzulMarino, fontWeight: FontWeight.bold)),
                           content: Column(
                            mainAxisSize: MainAxisSize.min, 
                                children: [
                           Text("Deja un comentario sobre mi portafolio o te robo la ip :) :", style: TextStyle(color: cAzulMarino)),
                              SizedBox(height: 15),
                                  TextField(
                                 style: TextStyle(color: cAzulMarino),
                               decoration: InputDecoration(
                                   hintText: "Escribe aqui...",
                                      hintStyle: TextStyle(color: cAzulMarino.withOpacity(0.5)),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: cPurpura, width: 2)),
                                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: cAzulMarino)),
                                      border: OutlineInputBorder(),
                              ),
                                  ),   ],
                ),
                              actions: [
                                TextButton(
                              onPressed: () => Navigator.pop(context),
                                  child: Text("ENVIAR", style: TextStyle(color: cPurpura, fontWeight: FontWeight.bold)),
                             ),
                        ],
                            );
                      },
                        );
                      },
                child: Card(
                        color: cCrema,
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           FaIcon(FontAwesomeIcons.paperPlane, size: 50, color: cAzulMarino),
                            SizedBox(height: 10),
                           Text("Comentarios", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: cAzulMarino)),
                            ],
                          ),  ),
                      ),),
                  ],
            ),
              ),
              SizedBox(height: 40), 
            ],
       ),
        ),
   ), );
  }
}
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color cAzulMarino = Color(0xFF1B263B);
    final Color cCrema = Color(0xFFF8E1B4);
    final Color cPurpura = Color(0xFF8758CA);
    final Color cAmarillo = Color(0xFFF0CA68);

    return Scaffold(
    backgroundColor: cAzulMarino ,
     appBar: AppBar(
        backgroundColor: cPurpura,
     title: Text("Contacto y Skills" , style: TextStyle(color: cCrema , fontWeight: FontWeight.bold)),
       iconTheme: IconThemeData(color: cCrema),
        centerTitle: true,
      ),
      body: Stack(
       children: [
          Container(
            height: 280,
            width: double.infinity,
           decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/banner_telefono.gif") ,
                fit: BoxFit.cover,
             ),
            ),),
  SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 230.0 , left: 20.0 , right: 20.0),
            child: Column(
                children: [
                 Card(
                    color: cCrema,
                    elevation: 8,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)) ,
  child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.github , color: cPurpura),
                     title: Text("GitHub"  , style: TextStyle(fontWeight: FontWeight.bold , color: cAzulMarino)),
                      subtitle: Text("roancitobebe" , style: TextStyle(color: cAzulMarino.withOpacity(0.8))),
                    ),
                  ),
                  SizedBox(height: 15),
                  Card(
                    color: cCrema,
                    elevation: 8,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.phone , color: cPurpura),
                      title: Text("Telefono" , style: TextStyle(fontWeight: FontWeight.bold , color: cAzulMarino)),
                    subtitle: Text("04123594253" , style: TextStyle(color: cAzulMarino.withOpacity(0.8))),
                    ),
                  ),
                  SizedBox(height: 15),
                 Card(
                    color: cCrema,
                    elevation: 8,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)) ,
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.envelope , color: cPurpura),
                     title: Text("Correo Electronico"  , style: TextStyle(fontWeight: FontWeight.bold , color: cAzulMarino)),
                     subtitle: Text("roandmoreno123@gmail.com" , style: TextStyle(color: cAzulMarino.withOpacity(0.8))),
                    ),
                  ),
                  SizedBox(height: 15),
  Card(
                   color: cCrema,
                   elevation: 8,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                   child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.instagram , color: cPurpura),
                    title: Text("Instagram" , style: TextStyle(fontWeight: FontWeight.bold , color: cAzulMarino)),
                      subtitle: Text("@roand123" , style: TextStyle(color: cAzulMarino.withOpacity(0.8))),
                    ),
                  ),
                  SizedBox(height: 25),

                  Container(
                   width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                   decoration: BoxDecoration(
                     color: cCrema,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Text("Mis Skills" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18 , color: cAzulMarino)),
                        SizedBox(height: 10
                      ),
                      Image.asset("assets/skill.png" , fit: BoxFit.contain),
                      ],
                   ),
                 ),
                  SizedBox(height: 40),

            ],
              ),
           ),
         ),
        ], ),
    ); }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 801,
                  width: 360,
                  decoration: BoxDecoration(color: Color(0xff41818A)),
                ),
              ),
              Center(
                child: sup(),
              ),
              Center(
                child: contenido(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class contenido extends StatelessWidget {
  const contenido({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 219,
                height: 59,
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(height: 14),
            ],
          ),
          SizedBox(height: 14),
          Navbar(),
          SizedBox(height: 14),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [boton()]),
          SizedBox(height: 14),
          Carrousel()
        ],
      ),
    );
  }
}

class boton extends StatelessWidget {
  const boton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Lógica a realizar al presionar el botón
      },
      icon: Icon(Icons.add),
      label: Text('Agregar'),
    );
  }
}

class sup extends StatelessWidget {
  const sup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  height: 69,
                  width: 360,
                  decoration: BoxDecoration(color: Color(0xFF00B4D8)),
                ),
              )
            ],
          ),
        ]));
  }
}

class person extends StatelessWidget {
  const person({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311,
      height: 147,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 14),
          Column(
            children: [
              SizedBox(height: 20),
              Positioned(
                child: SizedBox(
                  child: Image.asset(
                    "assets/profe.jpg",
                    width: 73,
                    height: 104.35,
                    fit: BoxFit
                        .cover, // Ajusta el ajuste de la imagen según tus necesidades
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(width: 10), // Ancho de la imagen
              Text(
                "\nPROF. JOHANNA \n MARGARITA JASON\n\n23 años\n",
                style: TextStyle(color: Colors.black, fontSize: 12),
                textAlign: TextAlign.justify,
              ),
              Row(
                children: [
                  estrella(),
                  estrella(),
                  estrella(),
                  estrella(),
                  estrella()
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class contac extends StatelessWidget {
  const contac({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311,
      height: 147,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.white),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Icon(
                  Icons.person_outline_outlined,
                  size: 30, // Tamaño del icono
                  color: Colors.pink, // Color del icono
                ),
                Text(
                  " Lucía Mendez",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    estrella(),
                    estrella(),
                    estrella(),
                    estrella(),
                    estrella()
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: [
                Text(
                  '''
     Esta tutoría ha sido una experiencia transformadora para mí.\n   El tutor ha demostrado un profundo conocimientodel tem  y ha\n   sido capaz de explicar conceptos complejos de una manera \n   clara y comprensible.
  ''',
                  style: TextStyle(
                      fontSize: 10,
                      height: 1.5, // Espaciado entre líneas
                      fontFamily: 'Roboto'),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ]),
    );
  }
}

class estrella extends StatelessWidget {
  const estrella({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow,
    );
  }
}

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 344,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Color(0xFF8CBC70)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 86,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      //action coe when button is pressed
                    },
                    icon: Icon(Icons.settings_sharp),
                    color: Colors.white,
                  ),
                ],
              )),
          Container(
              width: 86,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.2,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      //action coe when button is pressed
                    },
                    icon: Icon(Icons.search),
                    color: Colors.white,
                  ),
                ],
              )),
          Container(
              width: 86,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.2,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      //action coe when button is pressed
                    },
                    icon: Icon(Icons.recommend),
                    color: Colors.white,
                  ),
                ],
              )),
          Container(
              width: 86,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(),
              ),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      //action coe when button is pressed
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class Carrousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 303,
          height: 500,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 2),
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 14), //
              person(),
              SizedBox(height: 14), //
              contac(),
              SizedBox(height: 14), //
              contac(),
              SizedBox(height: 14), //
              contac(),
            ],
          ),
        ),
      ],
    );
  }
}

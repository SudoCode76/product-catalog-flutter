import 'package:flutter/material.dart';
import 'package:sudo_keys/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class acerca extends StatelessWidget {
  const acerca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 174, 202),
      body: Column(
        children: [
          SizedBox(height: 50),
          Blocks(),
          SizedBox(height: 16),
          ButtonRow(),
        ],
      ),
    );
  }
}

class Blocks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sudo Code',
                  style: TextStyle(
                    fontSize: 24, // Tamaño de la fuente más grande
                    fontWeight:
                        FontWeight.bold, // Hace que el texto sea negrita
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Esta aplicación está hecha por SudoCode. Todos los derechos reservados.',
                  style: TextStyle(
                    fontSize: 16, // Tamaño de la fuente de la descripción
                    // Puedes ajustar otros estilos según lo desees
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: ClipOval(
            child: Image.asset(
              'assets/perfil.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 200.0, // Modifica este valor según lo necesites
            child: ElevatedButton(
              onPressed: () {
                _telegram();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(MyFlutterApp.telegram_plane),
                  SizedBox(width: 8),
                  Text(
                    'Telegram',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200.0, // Modifica este valor según lo necesites
            child: ElevatedButton(
              onPressed: () {
                _github();
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 255, 255, 255),
                onPrimary: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(MyFlutterApp.github_circled),
                  SizedBox(width: 8),
                  Text(
                    'GitHub',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200.0, // Modifica este valor según lo necesites
            child: ElevatedButton(
              onPressed: () {
                _whatsapp();
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 37, 211, 102),
                onPrimary: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(MyFlutterApp.whatsapp),
                  SizedBox(width: 8),
                  Text(
                    'Whatsapp',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200.0, // Modifica este valor según lo necesites
            child: ElevatedButton(
              onPressed: () {
                _correo();
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 255, 255),
                onPrimary: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(MyFlutterApp.mail_outline),
                  SizedBox(width: 8),
                  Text(
                    'Correo',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _telegram() async {
    const url = 'https://t.me/SudoCode76';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  Future<void> _github() async {
    const url = 'https://github.com/SudoCode76';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  Future<void> _whatsapp() async {
    const url = 'https://wa.link/4bc9e0';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  Future<void> _correo() async {
    const url = 'mailto:miguel.code@outlook.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir la URL: $url';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class activaciones extends StatelessWidget {
  Future<void> _launchURL() async {
    const url = 'https://www.pidkeys.com/index/check/pid.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 174, 202),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: Text('Abrir Página Web'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: activaciones(),
  ));
}

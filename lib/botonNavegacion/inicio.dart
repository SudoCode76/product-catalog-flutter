import 'package:flutter/material.dart';
import 'package:sudo_keys/botonNavegacion/productos.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

String windowsInfo = '';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  late SharedPreferences _prefs;
  @override
  void initState() {
    super.initState();
    _cargarDatos();
  }

  Future<void> _cargarDatos() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      w10Value = _prefs.getString('w10Value') ?? '';
      w11Value = _prefs.getString('w11Value') ?? '';
      office2021Value = _prefs.getString('office2021Value') ?? '';
      office2019Value = _prefs.getString('office2019Value') ?? '';
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 196, 174, 202),
        appBar: AppBar(
          title: Text(''),
          backgroundColor: const Color.fromARGB(255, 196, 174,
              202), // Puedes cambiar el color según tu preferencia
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350, // Ancho fijo deseado
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        windowsInfo += 'Windows 11 Pro\nKey: $w11Value\n';
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 125, 63, 96),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Windows 11 Pro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Key: $w11Value',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 350, // Ancho fijo deseado
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        windowsInfo += 'Windows 10 Pro\nKey: $w10Value\n';
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 125, 63, 96),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Windows 10 Pro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Key: $w10Value',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 350, // Ancho fijo deseado
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        windowsInfo +=
                            'Office 2021 Pro Plus\nKey: $office2021Value\n';
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 125, 63, 96),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Office 2021 Pro Plus',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Key: $office2021Value',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 350, // Ancho fijo deseado
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        windowsInfo +=
                            'Office 2019 Pro Plus\nKey: $office2019Value\n';
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 125, 63, 96),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Office 2019 Pro Plus',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Key: $office2019Value',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Office 2019 Pro Plus
                SizedBox(height: 10),

                //COPIAR AL PORTAPAPELES
                GestureDetector(
                  onTap: () {
                    // Copiar al portapapeles cuando se presiona el penúltimo contenedor
                    Clipboard.setData(ClipboardData(
                      text:
                          'Gracias por su compra\n$windowsInfo\nDownload Center: esd.winandoffice.com',
                    ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Contenido copiado al portapapeles'),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 350, // Ancho personalizado deseado
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 239, 248),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gracias por su compra',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 103, 80, 164),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                          SingleChildScrollView(
                            child: Text(
                              windowsInfo,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 103, 80, 164),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Container(
                  width: 200, // Establece el ancho personalizado del botón
                  height: 50, // Establece el alto personalizado del botón
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // Limpiar el contenido del penúltimo contenedor
                        windowsInfo = '';
                      });
                    },
                    child: Text('Limpiar Contenido'),
                  ),
                ),

                Container(),
                SizedBox(height: 10),
              ]),
        ),
      ),
    );
  }
}

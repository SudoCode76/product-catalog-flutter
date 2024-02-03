import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class productos extends StatefulWidget {
  const productos({Key? key}) : super(key: key);

  @override
  _productosState createState() => _productosState();
}

class _productosState extends State<productos> {
  late SharedPreferences _prefs;
  // Datos para Windows 10 Pro
  String w10Value = '';

  // Datos para Windows 11 Pro
  String w11Value = '';

  // Datos para Office 2021 Pro Plus
  String office2021Value = '';

  // Datos para Office 2019 Pro Plus
  String office2019Value = '';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Productos',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(
                255, 53, 33, 45), // Cambia el color del AppBar
          ),

          backgroundColor: const Color.fromARGB(
              255, 174, 115, 111), // Cambia el color de fondo aquí
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Windows 11 Pro
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 125, 63, 96),
                    borderRadius: BorderRadius.circular(
                        15.0), // Ajusta el valor según tus necesidades
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      _mostrarVentanaEmergentew11();
                    },
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
                SizedBox(height: 10),

                //Windows 10 Pro
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 125, 63, 96),
                    borderRadius: BorderRadius.circular(
                        15.0), // Ajusta el valor según tus necesidades
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      _mostrarVentanaEmergentew10();
                    },
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
                SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 125, 63, 96),
                    borderRadius: BorderRadius.circular(
                        15.0), // Ajusta el valor según tus necesidades
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      _mostrarVentanaEmergenteOff2021pp();
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Office 2021 PP',
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
                SizedBox(height: 10),

                //Office 2019 Pro Plus
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 125, 63, 96),
                    borderRadius: BorderRadius.circular(
                        15.0), // Ajusta el valor según tus necesidades
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      _mostrarVentanaEmergenteOff2019pp();
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Office 2019 PP',
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
                SizedBox(height: 10),

                Container(),
              ]),
        ));
  }

  void _mostrarVentanaEmergentew10() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ingrese la key para W10:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    w10Value = value;
                  });
                },
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _guardarDatosw10();
                    Navigator.of(context).pop();
                  },
                  child: Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cerrar'),
                ),
              ],
            ),
          ],
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        );
      },
    );
  }

  Future<void> _guardarDatosw10() async {
    await _prefs.setString('w10Value', w10Value);
  }

  void _mostrarVentanaEmergentew11() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ingrese la key para W11:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    w11Value = value;
                  });
                },
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _guardarDatosw11();
                    Navigator.of(context).pop();
                  },
                  child: Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cerrar'),
                ),
              ],
            ),
          ],
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        );
      },
    );
  }

  Future<void> _guardarDatosw11() async {
    await _prefs.setString('w11Value', w11Value);
  }

  void _mostrarVentanaEmergenteOff2019pp() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ingrese la key para Office 2019 Pro Plus:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    office2019Value = value;
                  });
                },
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _guardarDatosOffice2019PP();
                    Navigator.of(context).pop();
                  },
                  child: Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cerrar'),
                ),
              ],
            ),
          ],
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        );
      },
    );
  }

  Future<void> _guardarDatosOffice2019PP() async {
    await _prefs.setString('office2019Value', office2019Value);
  }

  void _mostrarVentanaEmergenteOff2021pp() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ingrese la key para Office 2021 Pro Plus:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    office2021Value = value;
                  });
                },
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _guardarDatosOffice2021PP();
                    Navigator.of(context).pop();
                  },
                  child: Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cerrar'),
                ),
              ],
            ),
          ],
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        );
      },
    );
  }

  Future<void> _guardarDatosOffice2021PP() async {
    await _prefs.setString('office2021Value', office2021Value);
  }
}

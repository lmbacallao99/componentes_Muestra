import 'package:flutter/material.dart';

class AlertPages extends StatelessWidget {
  const AlertPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Pages'),
      ),
      body: Center(
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const Text('Mostrar Alerta',
                style: TextStyle(fontSize: 10.0, color: Colors.white)),
            onPressed: () => _mostrarAlert(context)),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Contenido de la Alerta'),
                SizedBox(
                  height: 50,
                  width: 50.0,
                ),
                FlutterLogo(size: 100.0),
              ],
            ),
            actions: <Widget>[
              TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text('OK',
                      style: TextStyle(fontSize: 10.0, color: Colors.white)),
                  onPressed: () => Navigator.of(context).pop())
            ],
          );
        });
  }
}

import 'package:flutter/material.dart';

class Home_temp extends StatelessWidget {
  const Home_temp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creando Listas'),
      ),
      body: ListView(children: _crearItems()),
    );
  }
}

final opciones = ['Lista 1', 'Lista 2', 'Lista 3', 'Lista 4'];

List<Widget> _crearItems() {
  return opciones.map((item) {
    return Column(
      children: [
        ListTile(
          title: Text('$item !'),
          subtitle: const Text(
            'subtitulo',
            style: TextStyle(color: Colors.blue),
          ),
          leading: const Icon(Icons.add),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        const Divider()
      ],
    );
  }).toList();
}

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipio2(),
        ],
      ),
    );
  }

  Widget _cardtipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Muestra del titulo'),
            subtitle: Text('Muesta del subtitulo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text('Aceptar',
                      style: TextStyle(fontSize: 10.0, color: Colors.white)),
                  onPressed: () {}),
              const SizedBox(width: 10),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text('Cancelar',
                      style: TextStyle(fontSize: 10.0, color: Colors.white)),
                  onPressed: () {}),
              const SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}

Widget _cardTipio2() {
  return Card(
    child: Column(
      children: const <Widget>[
        FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Sophie-Turner.jpg'))
      ],
    ),
  );
}

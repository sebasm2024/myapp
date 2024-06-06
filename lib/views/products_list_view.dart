import 'package:flutter/material.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Productos'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.network(
              'https://i.ytimg.com/vi/bd346_RgkSo/maxresdefault.jpg', // URL de la imagen
              width: 100, // Ancho de la imagen
              height: 150, // Alto de la imagen
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Imagenes en el Ecuador',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Entre los otros motivos también resalta la inmensa riqueza en diversidad natural y cultural, tanto por las especies de aves, mariposas, orquídeas, reptiles, anfibios, mamíferos, entre otras especies, el valor natural de las reservas Sangay y las islas Galápagos, ',
            ),
          ),
          // Puedes agregar más ListTile si necesitas más elementos en la lista
        ],
      ),
    );
  }
}

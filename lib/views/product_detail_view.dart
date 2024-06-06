import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Producto'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://cdn.pixabay.com/photo/2016/10/18/21/28/seljalandsfoss-1751463_640.jpg', // URL de la imagen
            fit: BoxFit.cover,
            width: 150, 
            height: 150, 
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Descripción del Imagen  Aquí',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                
                },
                child: const Text('Iniciar'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


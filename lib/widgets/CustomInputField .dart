import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isUrl;

  const CustomInputField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.isUrl = false, // Nuevo parámetro para aceptar URL opcionalmente
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (isUrl && value != null && value.isNotEmpty) {
            // Validación opcional para URL
            Uri? uri = Uri.tryParse(value);
            if (uri == null || !uri.isAbsolute) {
              return 'Por favor, ingresa una URL válida';
            }
          }
          return null;
        },
      ),
    );
  }
}

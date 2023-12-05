import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CaixaTexto extends StatelessWidget {
  String nome;
  TextEditingController controller;
  CaixaTexto({super.key, required this.nome, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Color(0xFF550F12),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Color(0xFF550f12),
          ),
        ),
        hintText: nome,
        helperStyle: const TextStyle(
          color: Color(0xFF550f12),
        ),
      ),
    );
  }
}

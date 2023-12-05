import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lista_contatos/model/contatos_model.dart';

class ContatosController extends GetxController {
  final TextEditingController controllerNumero = TextEditingController();
  final TextEditingController controllerNome = TextEditingController();

  RxList<ContatosModel> contatosFazia = <ContatosModel>[].obs;

  void adicionarContato({required String nome, required String numero}) {
    ContatosModel novoContato =
        ContatosModel(name: nome, numeroCelular: numero);
    contatosFazia.add(novoContato);
  }
}

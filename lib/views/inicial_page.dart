// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lista_contatos/controller/contatos_controller.dart';
import 'package:lista_contatos/widgets/app_bar_padrao.dart';
import '../widgets/caixa_texto.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  final c = Get.put(ContatosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPadrao(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: CaixaTexto(
                              nome: 'Número',
                              controller: c.controllerNumero,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: CaixaTexto(
                              nome: 'Nome',
                              controller: c.controllerNome,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 17),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          c.adicionarContato(
                            nome: c.controllerNome.text,
                            numero: c.controllerNumero.text,
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF550F12),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 37,
                        ),
                      ),
                      child: Text('Salvar'),
                    ),
                    SizedBox(height: 17),
                    SizedBox(
                      height: 400,
                      child: Obx(
                        () => ListView.builder(
                          itemCount: c.contatosFazia.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              trailing: Icon(
                                Icons.delete,
                                color: Color(0xFF550F12),
                                size: 30,
                              ),
                              title: Text(
                                c.contatosFazia[index].numeroCelular,
                                style: TextStyle(fontSize: 22),
                              ),
                              subtitle: Text(
                                c.contatosFazia[index].name,
                                style: TextStyle(fontSize: 17),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

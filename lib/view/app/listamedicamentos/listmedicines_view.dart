
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:appplotze_trabalho/controller/login_controller.dart';
import'package:appplotze_trabalho/controller/medicines_controller.dart';
import 'package:appplotze_trabalho/model/medicines.dart';

import 'package:appplotze_trabalho/view/app/novosmedicamentos/newpill_forms_view.dart';

class Listmedicines extends StatefulWidget {
  const Listmedicines({super.key, required Medicamentos Medicamentos});

  @override
  State<Listmedicines> createState() => _ListmedicinesState();
}

class _ListmedicinesState extends State<Listmedicines> {
  var txtnmMedicamento = TextEditingController();
  var txtqntdMedicamento = TextEditingController();
  var txtdscdMedicamento = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF14233c),

      appBar: AppBar(
        backgroundColor: Color(0XFF60468f),
        title: Row(
          children: [
            Expanded(child: Text('Lista Medicamentos')),
            FutureBuilder<String>(
              future: LoginController().usuarioLogado(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontSize: 12),
                      ),
                      onPressed: () {
                        LoginController().logout();
                        Navigator.pushReplacementNamed(context, 'login');
                      },
                      icon: Icon(Icons.exit_to_app, size: 14),
                      label: Text(snapshot.data.toString()),
                    ),
                  );
                }
                return Text('');
              },
            ),
          ],
        ),
        centerTitle: true,
      ),

        body: Padding(
        padding: EdgeInsets.all(30),
        child: StreamBuilder<QuerySnapshot>(
          stream: MedicinesController().listar().snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text('Não foi possível conectar.'),
                );
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                final dados = snapshot.requireData;
                if (dados.size > 0) {
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      String id = dados.docs[index].id;
                      dynamic item = dados.docs[index].data();
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.description),
                          title: Text(item['nome']),
                          subtitle: Text(item['descricao']),
                          onTap: () {
                          },
                          onLongPress: () {
                            MedicinesController().excluir(context, id);
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Nenhum Remedio encontrado'),
                  );
                }
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //salvarMedicamento(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
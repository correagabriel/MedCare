
import 'package:flutter/material.dart';
import '../../model/medicines.dart';

class Listmedicines extends StatefulWidget {
  const Listmedicines({super.key});

  @override
  State<Listmedicines> createState() => _ListmedicinesState();
}

class _ListmedicinesState extends State<Listmedicines> {

  List<tdsRemedios> lista = [];

  @override
  void initState() {
    super.initState();
    //Inicialização da lista
    lista = tdsRemedios.gerartdsRemedios();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF14233c),

      appBar: AppBar(
        backgroundColor: Color(0XFF60468f),
        title: const Text("Lista de Remédios"),
        centerTitle: true,
      ),

        body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, position) {
            return Card(
              color: Colors.green,
              child: ListTile(
                leading: Icon(Icons.task_alt_outlined),
                title: Text(lista[position].nomeMedicamento),
                //subtitle: Text(lista[position].descricao),
                trailing: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      lista.removeAt(position);
                    });
                  },
                ),
                hoverColor: Colors.blue.shade200,
                onTap: () {
                  tdsRemedios t = lista[position];

                  Navigator.pushNamed(
                    context,
                    'medicinesinlist',
                    arguments: t,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewPill extends StatefulWidget {
  const NewPill({super.key});

  @override
  State<NewPill> createState() => _NewPillState();
}

class _NewPillState extends State<NewPill> {

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0XFF14233c),

      appBar: AppBar(
        title: const Text("Novo Remédios"),
        centerTitle: true,
        backgroundColor: Color(0XFF60468f),
      ),

      //BOTÃO DE ADICIONAR REMEDIOS
      floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerDocked,
        body: Center(
          child: FloatingActionButton.large(
            onPressed: () {
              Navigator.pushNamed(context, 'formsnewpill');
            },
            backgroundColor: Color(0XFFc26ef7),
            child: Icon(Icons.add),
          ), 
        ),
    );
  }
}
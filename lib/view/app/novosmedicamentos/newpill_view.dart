// ignore_for_file: prefer_const_constructors

import 'package:appplotze_trabalho/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../controller/login_controller.dart';


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
          backgroundColor: Color(0XFF60468f),
          title: Row(
          children: [
            Expanded(child: Text('Novo Remedio')),
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
// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields

import 'package:appplotze_trabalho/controller/login_controller.dart';
import 'package:appplotze_trabalho/controller/medicines_controller.dart';
import 'package:appplotze_trabalho/view/app/listamedicamentos/listmedicines_view.dart';
import 'package:flutter/material.dart';

import 'package:appplotze_trabalho/model/medicines.dart';
import 'package:appplotze_trabalho/view/messages/try_view.dart';

class Formsnewpill extends StatefulWidget {
  const Formsnewpill({super.key});

  @override
  State<Formsnewpill> createState() => _FormsnewpillState();
}

class _FormsnewpillState extends State<Formsnewpill> {
  var txtnmRemedio = TextEditingController();
  var txtqntdRemedio = TextEditingController();
  var txtdscdRemedio = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Color(0XFF14233c),
      
      appBar: AppBar(
        centerTitle: true,
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
                        Navigator.pushReplacementNamed(context, 'principal');
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

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [

            SizedBox(
              height: 150,
            ),

            TextField(
              controller: txtnmRemedio ,
                decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19)
                ),
                labelText: 'Nome Rémedio',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: const BorderSide(color: Color(0XFF60468f))
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                )
                ),   
            ),
            
            SizedBox(
              height: 50,
            ),
            
            Text(" QUANTIDADE COMPRIMIDOS : ",
              style: TextStyle(
                fontSize: 22,
                color: Color(0XFF848c9a),
                ),
            ),

            TextField(
              controller: txtqntdRemedio,
                decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: const BorderSide(color: Color(0XFF60468f))
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                )
                ),   
            ),

              SizedBox(
                height: 55,
              ),

            TextField(
              controller: txtdscdRemedio,
                decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19)
                ),
                labelText: 'Predescrição',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: const BorderSide(color: Color(0XFF60468f))
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                )
                ),   
            ),
            
              SizedBox(
                height: 130,
              ),
              
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0XFFc26ef7),
                foregroundColor: Colors.white,
                minimumSize: Size(350, 50),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
                ),
              ),
              onPressed: () {
                var t = Medicamentos(
                  LoginController().idUsuario(),
                  txtnmRemedio.text,
                  txtqntdRemedio.text,
                  txtdscdRemedio.text,
                );
                txtdscdRemedio.clear();
                txtqntdRemedio.clear();
                txtdscdRemedio.clear();
                MedicinesController().adicionar(context, t);
              }, child: Text('ADICIONAR Remedio'),
            ),
          ],
        ),
      ),
    );
  }
}
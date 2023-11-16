// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Telaapresentacao extends StatefulWidget {
  const Telaapresentacao({super.key});

  @override
  State<Telaapresentacao> createState() => _TelaapresentacaoState();
}

class _TelaapresentacaoState extends State<Telaapresentacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF14233c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(
            height: 30,
          ),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, 'principal');
            },
             child: Ink.image(
                width: 500,
                height: 500,
                image: AssetImage("assets/logo_app_semfundo.png"),
             ),

          ),
          
        ],
      )
    );
  }
}
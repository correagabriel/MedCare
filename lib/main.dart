// ignore_for_file: prefer_const_constructors

import 'package:appplotze_trabalho/firebase_options.dart';
import 'package:appplotze_trabalho/view/app/medicinesbox_view.dart';
import 'package:appplotze_trabalho/view/app/medicinesinbox_view.dart';
import 'package:appplotze_trabalho/view/app/medicinesinlist_view.dart';
import 'package:appplotze_trabalho/view/apresentation/scren_apresentation.dart';
import 'package:appplotze_trabalho/view/navegation/navbar_view.dart';
import 'package:appplotze_trabalho/view/user/forgetpassword_view.dart';
import 'package:appplotze_trabalho/view/app/listmedicines_view.dart';
import 'package:appplotze_trabalho/view/app/newpill_forms_view.dart';
import 'package:appplotze_trabalho/view/app/newpill_view.dart';
import 'package:appplotze_trabalho/view/user/newuser_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'view/app/index_view.dart';
import 'view/user/login_view.dart';
import 'firebase_options.dart';


Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        //
        // ROTAS DE NAVEGAÇÃO
        //
        initialRoute: 'apresentacao',
        routes: {
          
          //apresentação
          'apresentacao': (context) => Telaapresentacao(),

          //tela de login
          'principal': (context) => PrincipalView(),
          //index 
          'index': (context) => IndexView(),
          //esqueceu a senha
          'forgetpassword': (context) => ForgetPassword(),
          //novo usuario
          'newuser': (context) => NewUser(),

          //novo remedio
          'newpill': (context) => NewPill(),
          //formulario de novo remedio
          'formsnewpill': (context) => Formsnewpill(),
          //lista dos medicamentos
          'listmedicines': (context) => Listmedicines(),
          //medicamentos dentro da lista
          'medicinesinlist': (context) => Medicinesinlist(),
          //caixa de medicamentos
          'medicinesboxes': (context) => MedicinesinBox(),
          //medicamentos dentro da caixa de medicamentos
          'medicinesinboxes': (context) => MedicinesBox(),

          //navbar 
          'navbar': (context) => NavegationBarr(),

        },
      ),
    ),
  );
}

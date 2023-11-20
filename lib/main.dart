// ignore_for_file: prefer_const_constructors

import 'package:appplotze_trabalho/firebase_options.dart';
// ignore: unused_import
import 'package:appplotze_trabalho/view/app/caixamedicamentos/medicinesinbox_view.dart';
import 'package:appplotze_trabalho/view/apresentation/scren_apresentation.dart';
import 'package:appplotze_trabalho/view/navegation/navbar_view.dart';
import 'package:appplotze_trabalho/view/user/forgetpassword_view.dart';
import 'package:appplotze_trabalho/view/app/listamedicamentos/listmedicines_view.dart';
import 'package:appplotze_trabalho/view/app/novosmedicamentos/newpill_forms_view.dart';
import 'package:appplotze_trabalho/view/app/novosmedicamentos/newpill_view.dart';
import 'package:appplotze_trabalho/view/user/newuser_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'view/app/index_view.dart';
import 'view/user/login_view.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


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
          'apresentacao': (context) => const Telaapresentacao(),

          //tela de login
          'principal': (context) => const  PrincipalView(),
          //index 
          'index': (context) => const  IndexView(),
          //esqueceu a senha
          'forgetpassword': (context) => const  ForgetPassword(),
          //novo usuario
          'newuser': (context) => const  NewUser(),

          //novo remedio
          'newpill': (context) => const  NewPill(),
          //formulario de novo remedio
          'formsnewpill': (context) => const  Formsnewpill(),
          //lista dos medicamentos
          'listmedicines': (context) => const Listmedicines(),
          //caixa de medicamentos
          'medicinesboxes': (context) => const  MedicinesinBox(),
          //medicamentos dentro da caixa de medicamentos

          //navbar 
          'navbar': (context) => const  NavegationBarr(),

        },
      ),
    ),
  );
}

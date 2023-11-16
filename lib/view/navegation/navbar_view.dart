// ignore_for_file: prefer_const_constructors

import 'package:appplotze_trabalho/view/app/listmedicines_view.dart';
import 'package:appplotze_trabalho/view/app/medicinesinbox_view.dart';
import 'package:appplotze_trabalho/view/app/newpill_view.dart';
import 'package:flutter/material.dart';

import '../app/index_view.dart';

class NavegationBarr extends StatefulWidget {
  const NavegationBarr({super.key});

  @override
  State<NavegationBarr> createState() => _NavegationBarrState();
}

class _NavegationBarrState extends State<NavegationBarr> {
  @override

  // ignore: override_on_non_overriding_member
  int _index = 0;
  final screens = [
    NewPill(),
    Listmedicines(),
    MedicinesinBox(),
    IndexView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF60468f),
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (value){
          setState(() {
            _index = value;
          });
        },
        
      backgroundColor: Color(0XFF60468f),
        fixedColor: Colors.white,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Novo',
            //label: 'Novos Remédios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: 'Lista',
            //label: 'Lista de Remédios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Remédios',
            //label: 'Caixa de Remédios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Sobre',
            //label: 'Caixa de Remédios',
          ),
        ],
      ),
    );
  }
}
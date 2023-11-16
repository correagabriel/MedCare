// ignore: unused_import
import 'package:appplotze_trabalho/view/navegation/navbar_view.dart';
import 'package:flutter/material.dart';
import '../../model/medicines.dart';

class Medicinesinlist extends StatefulWidget {
  const Medicinesinlist({super.key});

  @override
  State<Medicinesinlist> createState() => _MedicinesinlistState();
}

class _MedicinesinlistState extends State<Medicinesinlist> {
  @override
  Widget build(BuildContext context) {
  
  var lmedicines = ModalRoute.of(context)!.settings.arguments as tdsRemedios;
      return Scaffold(
        backgroundColor: Color(0XFF14233c),
        appBar: AppBar(
          title: const Text("Lista de Remédio"),
            centerTitle: true,
          backgroundColor: Color(0XFF60468f),
          leading: const BackButton(
          ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [

            SizedBox(
              height: 80,
            ),

            Text(
              lmedicines.nomeMedicamento,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0XFF848c9a),
              ),
            ),
            
              SizedBox(
                height: 30,
              ),

            Text(
              lmedicines.qtndMedicamento,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Color(0XFF848c9a),
              ),
            ),

              SizedBox(
                height: 20,
              ),

            Text(
              lmedicines.dscMedicamento,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Color(0XFF848c9a),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
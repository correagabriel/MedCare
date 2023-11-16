// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';

class Formsnewpill extends StatefulWidget {
  const Formsnewpill({super.key});

  @override
  State<Formsnewpill> createState() => _FormsnewpillState();
}

class _FormsnewpillState extends State<Formsnewpill> {

  String _numberBox = 'A:1';
    var _boxes = [
      'A:1',
      'A:2',
      'A:3',
      'B:1',
      'B:2',
      'B:3',
      'C:1',
      'C:2',
      'C:3',
    ];

  int _pills = 0;
    void _changeamount(int qtnd){
      setState(() {
        _pills += qtnd; 
      }); 
    }
  
    final Boxes = ValueNotifier('');
    final nmrBoxes = ['','','','','','',''];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Color(0XFF14233c),
      
      appBar: AppBar(
        title: const Text("Formulário Novo Remédio"),
        centerTitle: true,
        backgroundColor: Color(0XFF60468f),
        leading: const BackButton(
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
            
            Text(" QUANTIDADE COMPRIMIDOS : $_pills",
              style: TextStyle(
                fontSize: 22,
                color: Color(0XFF848c9a),
                ),
            ),
      
            SizedBox(
              height: 12,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 50),
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    _changeamount(1);
                  }, 
                  child: Text("+ 1"),
                ),
                
                SizedBox(
                  width: 40,
                ),
      
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 50),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _changeamount(-1); 
                  }, 
                  child: Text("- 1"),
                ),
              ],
            ),

            SizedBox(
              height: 50,
            ),

            Center(
                child: Container(
                  width: 280,
                  height: 50,
                child: DropdownButton(
                  items: _boxes.map((String box){
                    return DropdownMenuItem(
                      value: box,
                      child: Text(box),
                    );
                  }).toList(), 
                  onChanged: (String? newValue){
                    setState(() {
                      _numberBox = newValue!;
                    });
                  },
                  value: _numberBox ,
                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 50,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0XFF848c9a),
                  ),
                ),
              ),
            ),

                SizedBox(
                  height: 55,
                ),

            TextField(
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
              //
              // NAVEGAR PARA ROTA
              //
              Navigator.pushNamed(context, 'navbar');
              },
              child: Text('ADICIONAR'),
              ),

          ],
        ),
      ),
    );
  }
}
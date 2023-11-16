import 'package:flutter/material.dart';

class MedicinesinBox extends StatefulWidget {
  const MedicinesinBox({super.key});

  @override
  State<MedicinesinBox> createState() => _MedicinesinBoxState();
}

class _MedicinesinBoxState extends State<MedicinesinBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF14233c),

      appBar: AppBar(
        title: const Text("Caixa com os Remédios"),
        backgroundColor: Color(0XFF60468f),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("A:1"),
                ),
                
                SizedBox(
                  width: 60,
                ),
      
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("A:2"),
                ),
                
                SizedBox(
                  width: 60,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("A:3"),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("B:1"),
                ),
                
                SizedBox(
                  width: 60,
                ),
      
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("B:2"),
                ),
                
                SizedBox(
                  width: 60,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("B:3"),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("C:1"),
                ),
                
                SizedBox(
                  width: 60,
                ),
      
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("C:2"),
                ),
                
                SizedBox(
                  width: 60,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                  ),
                  onPressed: () {
                  }, 
                  child: Text("C:3"),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
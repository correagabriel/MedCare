import 'package:appplotze_trabalho/controller/login_controller.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final txtEsqueceuPassword = TextEditingController();
      
    @override
      void initState() {
        super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF14233c),
      appBar: AppBar(
        title: const Text("Esqueceu a Senha"),
        centerTitle: true,
        backgroundColor: Color(0XFF60468f),
        leading: const BackButton(
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Digite seu E-mail e mandaremos um link',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                color: Color(0XFF848c9a),
                ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              controller: txtEsqueceuPassword,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ), 
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: const BorderSide(
                    color:Color(0XFF60468f) ,width: 4
                  ),
                ),
                hintText: 'E-MAIL',
              ),
            ),
          ),

          SizedBox(
            height: 50,
          ),

          OutlinedButton(
            onPressed: (){
              LoginController().esqueceuSenha(
                context,
                txtEsqueceuPassword.text,
              );
            },
            style: OutlinedButton.styleFrom(
                backgroundColor: Color(0XFFc26ef7),
                foregroundColor: Colors.white,
                minimumSize: Size(200, 70),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
                ),
            ),
            child: Text(
              'Redefina sua senha',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget buildStyledButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: () {
        if (txtEsqueceuPassword.text.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Digite o email')),
          );
        } else {
          LoginController().esqueceuSenha(context, txtEsqueceuPassword.text);
          Navigator.pushNamed(context, 'inicio');
        }
      },
      child: const Text('Enviar Email de Redefinição'),
    );
  }
}
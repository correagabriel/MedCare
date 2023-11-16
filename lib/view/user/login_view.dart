  // ignore_for_file: prefer_const_constructors

  import 'package:flutter/material.dart';
  import 'package:appplotze_trabalho/controller/login_controller.dart';

  class PrincipalView extends StatefulWidget {
    const PrincipalView({super.key});

    @override
    State<PrincipalView> createState() => _PrincipalViewState();
  }

  class _PrincipalViewState extends State<PrincipalView> {
    var txtEmail = TextEditingController();
    var txtSenha = TextEditingController();

    @override
    void initState(){
      super.initState();
    }

    final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      return Material(
        child: Scaffold(
          backgroundColor: Color(0XFF14233c),
          //width: double.infinity,
          //height: double.infinity,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 180, 0, 100),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(360),
                        child: Image.asset(
                          'icon1.jpg',
                          width: 200,
                          height: 200,
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      TextFormField(
                        controller: txtEmail,
                            decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'Email',
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
                        height: 15,
                      ),

                      TextFormField(
                        controller: txtSenha,
                        obscureText: true,
                            maxLength: 8,
                            validator: (String? value) {
                            if (value == null) {
                              return 'Por favor, insira sua senha';
                            }
                            if(value.length <8){
                              return "Senha muita curta";
                            }
                            return null;
                            },
                            decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'SENHA',
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
                        height: 15,
                      ),
                      
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0XFFc26ef7),
                          foregroundColor: Colors.white,
                          minimumSize: Size(double.infinity, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        onPressed: () {
                          //
                          // NAVEGAR PARA ROTA
                          //
                          LoginController().login(
                            context,
                            txtEmail.text,
                            txtSenha.text,
                          );
                          botaoPrincipalClicado();
                        },
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      
                      TextButton(onPressed: () {
                          //
                          // NAVEGAR PARA ROTA
                          //
                          Navigator.pushNamed(context, 'forgetpassword');
                      }, 
                      child: Text(
                        'EQUECI A SENHA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0XFFc26ef7),
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  onPressed: () {
                    //
                    // NAVEGAR PARA ROTA
                    //
                    Navigator.pushNamed(context, 'newuser');
                  },
                  child: Text(
                    'NOVO USUÁRIO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
      );
    }
    botaoPrincipalClicado(){
      if(_formKey.currentState!.validate()){
        Navigator.pushNamed(context, 'navbar'); 
      } else{
        print("Form Invalido");
      }
    }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:appplotze_trabalho/view/messages/try_view.dart';
import 'package:appplotze_trabalho/controller/login_controller.dart';
import '../../controller/login_controller.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
    var txtNome               = TextEditingController();
    var txtEmail              = TextEditingController();
    var txtSenha              = TextEditingController();
    var txtCPF                = TextEditingController();
    var txtTelephone          = TextEditingController();
    var txtEmergencyTelephone = TextEditingController();

    @override
    void initState(){
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Material (
       child: Scaffold(
        backgroundColor: Color(0XFF14233c),
        appBar: AppBar(
          title: const Text("Novo Usuário"),
          centerTitle: true,
          backgroundColor: Color(0XFF60468f),
        ),
        //width: double.infinity,
        //height: double.infinity,
        //child: SizedBox(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                ),
                TextField(
                  controller: txtNome,
                  decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'Nome & Sobrenome',
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

                TextField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'E-mail',
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
                  controller: txtCPF,
                  maxLength: 11,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'CPF',
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
                  height: 25,
                ),

                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                      title: Text(
                        'Celular : ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                      ),
                      subtitle: TextFormField(
                        controller: txtTelephone,
                        decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(19))),
                        ),
                      ),),
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    Expanded(
                      child:ListTile(
                        title: Text(
                          'Numero Emergência : ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        subtitle:  TextFormField(
                          controller: txtEmergencyTelephone,
                          decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(19))),
                          ),
                        ),
                      ),
                  ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                TextFormField(
                  controller: txtSenha,
                  obscureText: true,
                  maxLength: 8,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19)
                      ),
                      labelText: 'Senha',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                        borderSide: const BorderSide(color: Color(0XFF60468f))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                        borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                      ),
                    ),
                ),

                SizedBox(
                  height: 15,
                ),

                TextFormField(
                  controller: txtSenha,
                  obscureText: true,
                  maxLength: 11,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(19)
                      ),
                      labelText: 'Repetir Senha',
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
                  height: 90,
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
                  LoginController().criarConta(
                      context,
                      txtNome.text,
                      txtEmail.text,
                      txtSenha.text,
                      txtCPF.text,
                      txtTelephone.text,
                      txtEmergencyTelephone.text,
                    );
                  },
                    child: Text(
                      'ENTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    ),
                ),
              ],
            ), 
          ),
        ),  
    );
  }
}
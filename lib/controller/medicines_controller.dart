import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/medicines.dart';
import '../view/messages/try_view.dart';
import 'login_controller.dart';

class MedicinesController {
  //
  // ADICIONAR um novo medicamento
  //
  void adicionar(context, Medicamentos t) {
    FirebaseFirestore.instance
        .collection('medicamentos')
        .add(t.toJson())
        .then((value) => sucesso(context, 'Medicamentos adicionada com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível adicionar o medicamento.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // ATUALIZAR
  //
  void atualizar(context, id, Medicamentos t) {
    FirebaseFirestore.instance
        .collection('medicamentos')
        .doc(id)
        .update(t.toJson())
        .then((value) => sucesso(context, 'Medicamento atualizada com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizar o Medicamentos.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  //
  void excluir(context, id) {
    FirebaseFirestore.instance
        .collection('medicamentos')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Medicamentos excluído com sucesso'))
        .catchError((e) => erro(context, 'Não foi possível excluir o medicamento.'));
  }

  //
  // LISTAR todas as Tarefas da coleção
  //
  listar() {
    return FirebaseFirestore.instance
        .collection('medicamentos')
        .where('nome', isEqualTo: LoginController().idUsuario());
  }
}
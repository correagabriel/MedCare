class tdsRemedios {
  String nomeMedicamento;
  String qtndMedicamento;
  String dscMedicamento;

  tdsRemedios(this.nomeMedicamento, this.qtndMedicamento,this.dscMedicamento);

  static List<tdsRemedios> gerartdsRemedios() {
    List<tdsRemedios> lista = [];
    for (int i = 1; i <= 1; i++) {
      lista.add(
        tdsRemedios(
          'Oxalato de Escitalopram',
          'Antes de toma-lo é necessário comer algo',
          'Quantidade = 3 ',
        ),
      );
    }
    return lista;
  }
}

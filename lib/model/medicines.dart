class Medicamentos {
  final String nomeMedicamento;
  final String qtndMedicamento;
  final String dscMedicamento;

  Medicamentos(this.nomeMedicamento, this.qtndMedicamento, this.dscMedicamento);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'nome': nomeMedicamento,
      'quantidade': qtndMedicamento,
      'descricao': dscMedicamento,
    };
  }

  factory Medicamentos.fromJson(Map<String, dynamic> json) {
    return Medicamentos(
      json['nome'],
      json['quantidade'],
      json['descricao'],
    );
  }
}
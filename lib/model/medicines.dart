class Medicamentos {
  final String nmMedicamento;
  final String qtndMedicamento;
  final String dscMedicamento;

  Medicamentos(this.nmMedicamento, this.qtndMedicamento, this.dscMedicamento, [String? text]);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'nome': nmMedicamento,
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
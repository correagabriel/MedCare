class Medicamentos {
  final String idmedicamento;
  final String nmMedicamento;
  final String qtndMedicamento;
  final String dscMedicamento;

  Medicamentos(this.idmedicamento,this.nmMedicamento, this.qtndMedicamento, this.dscMedicamento);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id' : idmedicamento,
      'nome': nmMedicamento,
      'quantidade': qtndMedicamento,
      'descricao': dscMedicamento,
    };
  }

  factory Medicamentos.fromJson(Map<String, dynamic> json) {
    return Medicamentos(
      json['id'],
      json['nome'],
      json['quantidade'],
      json['descricao'],
    );
  }
}
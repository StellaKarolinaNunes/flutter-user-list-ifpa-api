import 'dart:convert';

class Usuario {
  final String name;
  final String registrationNumber;
  final bool ativo;
  final String sexo;

  Usuario({
    required this.name,
    required this.registrationNumber,
    required this.ativo,
    required this.sexo,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    bool parseAtivo(dynamic value) {
      if (value is bool) return value;
      if (value is int) return value == 1;
      if (value is String) return value == '1' || value.toLowerCase() == 'true';
      return false;
    }

    String parseSexo(dynamic value) {
      if (value == null) return 'Não informado';
      final v = value.toString().toLowerCase();
      if (v == 'f' || v == 'feminino' || v == '0') return 'Feminino';
      if (v == 'm' || v == 'masculino' || v == '1') return 'Masculino';
      return v[0].toUpperCase() + v.substring(1);
    }

    return Usuario(
      name: (json['nome'] ?? '').toString(),
      registrationNumber: (json['matricula'] ?? '').toString(),
      ativo: parseAtivo(json['ativo']),
      sexo: parseSexo(json['sexo']),
    );
  }

  static List<Usuario> fromJsonList(String body) {
    final List<dynamic> jsonList = json.decode(body);
    return jsonList
        .map((json) => Usuario.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  // Método que pega  o nosso objeto telefone  e transforma em um objeto Map<String, dynamic>
  // toMap
  // passo 1
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  // metodo  que pega uma Map<String, dynamic> e transforma em um json pelo pacode dart:convert (json encode)
  // toJson
  // passo 2
  String toJson() => jsonEncode(toMap());

  // Passo 2 da deserialização
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

  // passo 1
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
}

import 'dart:convert';
import 'package:http/http.dart' as http;

class BuscaApi {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  BuscaApi({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  factory BuscaApi.fromMap(Map<String, dynamic> map) {
    return BuscaApi(
      id: map['id'],
      email: map['email'],
      first_name: map['first_name'],
      last_name: map['last_name'],
      avatar: map['avatar'],
    );
  }

  static Future<BuscaApi?> buscaUsuario(int id) async {
    final url = Uri.parse('https://reqres.in/api/users/$id');

    try {
      final resposta = await http.get(url);

      if (resposta.statusCode == 200) {
        final dados = jsonDecode(resposta.body);
        return BuscaApi.fromMap(dados['data']);
      } else {
        return null;
      }
    } catch (e) {
      print("ERRO AO BUSCAR USÚARIO: $e");
      return null;
    }
  }
}

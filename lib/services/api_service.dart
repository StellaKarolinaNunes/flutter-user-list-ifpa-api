import 'package:http/http.dart' as http;
import '../models/usuario.dart';

class ApiService {
  static const String _baseUrl = 'CHAVE_API';

  static Future<List<Usuario>> fetchUsers() async {
    final response = await http
        .get(Uri.parse(_baseUrl))
        .timeout(const Duration(seconds: 12));
    if (response.statusCode == 200) {
      return Usuario.fromJsonList(response.body);
    } else {
      throw Exception(
          'Falha ao carregar usuários (code: ${response.statusCode})');
    }
  }
}

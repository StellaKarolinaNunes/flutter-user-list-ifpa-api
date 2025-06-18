import 'package:flutter/material.dart';
import '../models/usuario.dart';
import '../services/api_service.dart';

class UsuarioProvider extends ChangeNotifier {
  List<Usuario> _usuarios = [];
  List<Usuario> get usuarios => _usuarios;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String? _error;

  String? get error => _error;

  Future<void> carregarUsuarios() async {
    if (_usuarios.isNotEmpty) return;
    _isLoading = true;
    notifyListeners();
    try {
      final lista = await ApiService.fetchUsers();
      _usuarios = lista;
      _error = null;
    } catch (e) {
      _error = 'Erro ao buscar usuários: $e';
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> atualizar() async {
    _isLoading = true;
    notifyListeners();
    try {
      final lista = await ApiService.fetchUsers();
      _usuarios = lista;
      _error = null;
    } catch (e) {
      _error = 'Erro ao buscar usuários: $e';
    }
    _isLoading = false;
    notifyListeners();
  }
}

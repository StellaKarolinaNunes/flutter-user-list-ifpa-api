import 'package:flutter/material.dart';
import '../models/usuario.dart';
import 'usuario_card.dart';

class UsuarioList extends StatelessWidget {
  final List<Usuario> usuarios;
  final ScrollController scrollController;

  const UsuarioList({
    super.key,
    required this.usuarios,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      radius: const Radius.circular(12),
      thumbVisibility: true,
      thickness: 6,
      child: ListView.separated(
        controller: scrollController,
        itemCount: usuarios.length,
        separatorBuilder: (context, index) => const SizedBox(height: 0),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        itemBuilder: (context, index) {
          return UsuarioCard(usuario: usuarios[index], index: index);
        },
      ),
    );
  }
}

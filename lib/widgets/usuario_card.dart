import 'package:flutter/material.dart';
import '../models/usuario.dart';
import '../constants/app_colors.dart';
import '../constants/app_icon.dart';
import '../constants/app_fonts.dart';

class UsuarioCard extends StatelessWidget {
  final Usuario usuario;
  final int index;

  const UsuarioCard({super.key, required this.usuario, required this.index});

  /// Função para obter o primeiro nome e borrar o restante
  String _nomeBorrado(String nome) {
    final partes = nome.trim().split(' ');
    if (partes.isEmpty) return '';
    final primeiroNome = partes.first;
    // Junta o resto dos nomes (se houver) e borra, mantendo espaços
    final restante = partes.length > 1
        ? partes.sublist(1).map((parte) => '*' * parte.length).join(' ')
        : '';
    return restante.isNotEmpty ? '$primeiroNome $restante' : primeiroNome;
  }

  /// Função para borrar a matrícula
  String _matriculaBorrada(String matricula) {
    if (matricula.isEmpty) return '';
    if (matricula.length <= 4) return '*' * matricula.length;
    // Mantém os 2 primeiros e os 2 últimos dígitos, borra o meio
    final inicio = matricula.substring(0, 2);
    final fim = matricula.substring(matricula.length - 2);
    final borrado = '*' * (matricula.length - 4);
    return '$inicio$borrado$fim';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.cardGradientStart,
            AppColors.cardGradientEnd,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.07),
            blurRadius: 12,
            offset: const Offset(0, 5),
          )
        ],
        border: Border.all(
          color:
              usuario.ativo ? AppColors.activeBorder : AppColors.inactiveBorder,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Topo: avatar com número + nome borrado
            Row(
              children: [
                CircleAvatar(
                  radius: 23,
                  backgroundColor: AppColors.primaryAccent.withOpacity(0.11),
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                      fontSize: 19,
                      fontFamily: AppFonts.main,
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Text(
                    _nomeBorrado(usuario.name),
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textMain,
                      letterSpacing: 0.15,
                      fontFamily: AppFonts.main,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),
            Divider(
              color: AppColors.primary.withOpacity(0.13),
              thickness: 1,
              endIndent: 10,
              indent: 4,
              height: 0,
            ),
            const SizedBox(height: 14),

            /// Matrícula borrada
            _InfoRow(
              icon: AppIcons.badge,
              label: 'Matrícula',
              value: _matriculaBorrada(usuario.registrationNumber),
              color: AppColors.matricula,
            ),
            const SizedBox(height: 9),

            /// Sexo
            _InfoRow(
              icon: AppIcons.sexo,
              label: 'Sexo',
              value: usuario.sexo,
              color: AppColors.sexo,
            ),
            const SizedBox(height: 2),

            /// Status Ativo/Inativo: alinhado à direita
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                  decoration: BoxDecoration(
                    color: usuario.ativo
                        ? AppColors.activeStatus
                        : AppColors.inactiveStatus,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: usuario.ativo
                            ? AppColors.activeStatus.withOpacity(0.12)
                            : AppColors.inactiveStatus.withOpacity(0.10),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        usuario.ativo ? AppIcons.ativo : AppIcons.inativo,
                        color: Colors.white,
                        size: 17,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        usuario.ativo ? 'Ativo' : 'Inativo',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.5,
                          letterSpacing: 0.3,
                          fontFamily: AppFonts.main,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget de linha de informação com ícone + texto
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.13),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(6),
          child: Icon(icon, size: 21, color: color),
        ),
        const SizedBox(width: 12),
        Text(
          '$label: ',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: color,
            fontSize: 15.5,
            fontFamily: AppFonts.main,
          ),
        ),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
              fontSize: 15.5,
              fontFamily: AppFonts.main,
            ),
          ),
        ),
      ],
    );
  }
}

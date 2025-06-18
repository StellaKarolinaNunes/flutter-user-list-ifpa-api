import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_icon.dart';
import '../constants/app_fonts.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(16),
        shadowColor: Colors.black12,
        child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 16, fontFamily: AppFonts.main),
          decoration: InputDecoration(
            hintText: 'Buscar por nome, matrícula, sexo ou ativo',
            prefixIcon: const Icon(AppIcons.search, color: AppColors.primary),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            suffixIcon: controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(AppIcons.close, color: AppColors.primary),
                    onPressed: () => controller.clear(),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}

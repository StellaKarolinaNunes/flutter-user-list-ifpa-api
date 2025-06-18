import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';

class NoResultsWidget extends StatelessWidget {
  const NoResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool isCompact = width < 400;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://i.postimg.cc/gJQhkvFP/9214769-removebg-preview-1.png',
            width: isCompact ? 90 : 160,
            height: isCompact ? 90 : 160,
            fit: BoxFit.contain,
          ),
          SizedBox(height: isCompact ? 12 : 24),
          Text(
            'Nenhum usuário encontrado',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: isCompact ? 15 : 21,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
              fontFamily: AppFonts.main,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isCompact ? 5 : 10),
          Text(
            'Tente ajustar sua busca ou\nlimpe o campo de pesquisa.',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: isCompact ? 12 : 15.5,
              fontFamily: AppFonts.main,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

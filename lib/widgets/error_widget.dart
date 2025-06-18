import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';
import '../constants/app_icon.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? errorMessage;
  final VoidCallback onRetry;
  const CustomErrorWidget({
    super.key,
    required this.errorMessage,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool isCompact = width < 400;
    return Center(
      child: Card(
        color: Colors.red.shade50,
        margin: EdgeInsets.symmetric(
            horizontal: isCompact ? 8 : 24, vertical: isCompact ? 8 : 20),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: isCompact ? 12 : 20, vertical: isCompact ? 18 : 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(AppIcons.inativo,
                  color: Colors.red.shade400, size: isCompact ? 28 : 40),
              SizedBox(height: isCompact ? 10 : 16),
              Text(
                errorMessage ?? 'Erro desconhecido',
                style: TextStyle(
                    color: Colors.red.shade900,
                    fontWeight: FontWeight.w500,
                    fontSize: isCompact ? 13 : 17,
                    fontFamily: AppFonts.main),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isCompact ? 12 : 20),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: Icon(AppIcons.refresh, size: isCompact ? 16 : 20),
                label: Text('Tentar novamente',
                    style: TextStyle(fontSize: isCompact ? 13 : 16)),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.primary,
                  textStyle: TextStyle(
                    fontFamily: AppFonts.main,
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: isCompact ? 10 : 22,
                      vertical: isCompact ? 8 : 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

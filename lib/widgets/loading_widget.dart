import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';
import '../constants/app_icon.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool isCompact = width < 400;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: isCompact ? 50 : 80,
            height: isCompact ? 50 : 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [AppColors.primary, AppColors.primaryAccent],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 2,
                  offset: const Offset(0, 8),
                )
              ],
            ),
            child: Icon(
              AppIcons.user,
              color: Colors.white,
              size: isCompact ? 30 : 48,
            ),
          ),
          SizedBox(height: isCompact ? 15 : 28),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryAccent),
            strokeWidth: isCompact ? 4 : 6,
          ),
          SizedBox(height: isCompact ? 10 : 24),
          Text(
            "Carregando usuários...",
            style: TextStyle(
              color: AppColors.primary,
              fontSize: isCompact ? 13 : 18,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
              fontFamily: AppFonts.main,
            ),
          ),
        ],
      ),
    );
  }
}

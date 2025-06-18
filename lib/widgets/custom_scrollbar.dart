import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomScrollbar extends StatelessWidget {
  final Widget child;
  final ScrollController controller;
  const CustomScrollbar({
    super.key,
    required this.child,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      thumbVisibility: true,
      thickness: 7,
      radius: const Radius.circular(20),
      interactive: true,
      child: child,
    );
  }
}

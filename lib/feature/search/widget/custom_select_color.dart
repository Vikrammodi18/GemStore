import 'package:flutter/material.dart';

class CustomSelectColor extends StatelessWidget {
  final Color color;
  final bool isActive;
  final VoidCallback onTap;
  const CustomSelectColor({
    super.key,
    required this.color,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Material(
        elevation: isActive ? 2 : 0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 32,
          width: 32,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Container(
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}

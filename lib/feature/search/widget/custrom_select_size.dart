import 'package:flutter/material.dart';

class CustromSelectSize extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;
  const CustromSelectSize({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? Color(0xFF515151) : Colors.white,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isActive ? Colors.white : Color(0xffC5C5C5),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String label;
  final bool isActive;
  final IconData iconData;
  final VoidCallback onTap;
  const CategoryItem({
    super.key,
    required this.label,
    required this.isActive,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(5),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: BoxBorder.all(
                width: 2,
                color: isActive ? Color(0xff3A2C27) : Colors.white,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: isActive ? Color(0xff3A2C27) : Color(0xffF3F3F3),
              ),
              child: Icon(
                iconData,
                color: isActive ? Colors.white : Color(0xff9D9D9D),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Color(0xff3A2C27) : Color(0xff9D9D9D),
          ),
        ),
      ],
    );
  }
}

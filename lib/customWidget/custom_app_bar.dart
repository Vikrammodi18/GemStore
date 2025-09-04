import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    required String titleText,
    required BuildContext context,
    bool showBack = true,
  }) : super(
         title: Text(titleText),
         leadingWidth: 63,
         leading: showBack
             ? Padding(
                 padding: const EdgeInsets.only(
                   left: 24.0,
                   top: 10,
                   bottom: 10,
                 ),
                 child: Material(
                   color: Colors.white,
                   elevation: 1,
                   borderRadius: BorderRadius.circular(20),
                   child: Container(
                     height: 20,
                     width: 20,
                     decoration: BoxDecoration(shape: BoxShape.circle),
                     child: IconButton(
                       onPressed: () {
                         context.pop();
                       },
                       icon: Icon(
                         Icons.arrow_back_ios_new_rounded,
                         size: 16,
                         color: Color(0xff1E3354),
                       ),
                     ),
                   ),
                 ),
               )
             : null,
       );
}

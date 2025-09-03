import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/bottom_navigation.dart';
import 'package:gem_store/route/router.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'GemStore',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        fontFamily: "ProductSans",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
    
    );
  }
}

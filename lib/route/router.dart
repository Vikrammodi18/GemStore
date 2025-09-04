import 'package:gem_store/bottom_navigation.dart';
import 'package:gem_store/feature/search/view/search_screen.dart';
import 'package:gem_store/feature/search/view/searched_product_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => BottomNavigationScreen()),
    GoRoute(path: "/searchScreen", builder: (context, state) => SearchScreen()),
    GoRoute(path: "/searchedProductScreen",builder: (context, state)=> SearchedProductScreen())
  ],
);

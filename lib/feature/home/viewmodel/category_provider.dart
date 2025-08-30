import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/feature/home/viewmodel/category_enum.dart';
import 'package:gem_store/feature/model/cloth_category.dart';

final categoryProvider = StateNotifierProvider<CategoryNotifier, CategoryEnum>(
  (ref) => CategoryNotifier(),
);

class CategoryNotifier extends StateNotifier<CategoryEnum> {
  CategoryNotifier() : super(CategoryEnum.women);

  void setCategory(CategoryEnum category) {
    state = category;
  }
}

final womenCategoryProvider = Provider<List<ClothCategory>>(
  (ref) => clothCategories,
);

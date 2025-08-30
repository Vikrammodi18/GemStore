import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/feature/home/view/women_screen.dart';
import 'package:gem_store/feature/home/viewmodel/category_enum.dart';
import 'package:gem_store/feature/home/viewmodel/category_provider.dart';
import 'package:gem_store/feature/home/widget/category_item.dart';

class HomeScreen extends ConsumerWidget {
  final Map<CategoryEnum, Widget> categoryScreen = {
    CategoryEnum.women: WomenScreen(),
    CategoryEnum.men: Center(child: Text("coming soon")),
    CategoryEnum.accessories: Center(child: Text("coming soon")),
    CategoryEnum.beauty: Center(child: Text("coming soon")),
  };
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final category = ref.watch(categoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("GemStore"),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        actions: [Icon(Icons.notifications_none_outlined)],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryItem(
                  label: "Women",
                  isActive: category == CategoryEnum.women,
                  iconData: Icons.female_sharp,
                  onTap: () {
                    ref
                        .read(categoryProvider.notifier)
                        .setCategory(CategoryEnum.women);
                  },
                ),
                CategoryItem(
                  label: "Men",
                  isActive: category == CategoryEnum.men,
                  iconData: Icons.male_sharp,
                  onTap: () {
                    ref
                        .read(categoryProvider.notifier)
                        .setCategory(CategoryEnum.men);
                  },
                ),
                CategoryItem(
                  label: "Accessories",
                  isActive: category == CategoryEnum.accessories,
                  iconData: Icons.watch_outlined,
                  onTap: () {
                    ref
                        .read(categoryProvider.notifier)
                        .setCategory(CategoryEnum.accessories);
                  },
                ),
                CategoryItem(
                  label: "Beauty",
                  isActive: category == CategoryEnum.beauty,
                  iconData: Icons.brush_outlined,
                  onTap: () {
                    ref
                        .read(categoryProvider.notifier)
                        .setCategory(CategoryEnum.beauty);
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: IndexedStack(
                index: category.index,
                children: categoryScreen.values.toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

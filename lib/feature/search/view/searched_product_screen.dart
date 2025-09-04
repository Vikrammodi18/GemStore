import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/customWidget/custom_app_bar.dart';
import 'package:gem_store/feature/search/controller/search_controller.dart';
import 'package:go_router/go_router.dart';

class SearchedProductScreen extends ConsumerWidget {
  // final String titleText;
  const SearchedProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searhedProductList = ref.watch(searchedProvider);
    final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(context: context, titleText: "Dresses"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Found",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "152 Results",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: BoxBorder.all(
                      color: Color(0x33302E26),
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            print("hello");
                          },
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: searhedProductList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.55,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  final dress = searhedProductList[index];
                  return GestureDetector(
                    onTap: () {
                      context.push('/productDetails');
                    },

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(10),
                          child: Stack(
                            children: [
                              Image.network(
                                dress.imgUrl,
                                height: h * 0.25,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: 5,
                                right: 5,
                                child: Material(
                                  elevation: 2,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      color: Colors.red,
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_rounded),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(dress.name, overflow: TextOverflow.ellipsis),
                        Text(
                          "\$ ${dress.price}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(5, (index) {
                                return Icon(
                                  index < dress.avgRating.floor()
                                      ? Icons.star_rounded
                                      : Icons.star_outline_rounded,
                                  color: Color(0xff508A7B),
                                  size: 16,
                                );
                              }),
                            ),
                            Text("(${dress.totalRating})"),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/feature/home/viewmodel/category_provider.dart';

class WomenScreen extends ConsumerWidget {
  const WomenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final womenClothList = ref.watch(womenCategoryProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Stack(
              children: [
                ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Image.asset(
                    "assets/images/model_banner.jpg",
                    fit: BoxFit.cover,
                    height: h * 0.25,
                    width: w,
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Autumn",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Collection",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "2025",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Feature Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Show all",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9B9B9B),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SizedBox(
              height: h * 0.26,
              child: ListView.builder(
                itemCount: womenClothList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                    height: h * 0.25,
                    width: w * 0.30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: Image.network(
                            height: h * 0.20,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            womenClothList[index].image,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          womenClothList[index].title,
                          style: TextStyle(
                            color: Color(0xff1D1F22),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "\$ ${womenClothList[index].price}",
                          style: TextStyle(
                            color: Color(0xff1D1F22),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(
                height: h * 0.25,
                width: double.infinity,
                'assets/images/newcollectionBanner.png',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Show all",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9b9b9b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: h * 0.10,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => SizedBox(
                  height: h * 0.10,
                  width: w * 0.70,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(10),
                        child: Image.network(
                          height: 60,
                          width: 50,
                          "https://plus.unsplash.com/premium_photo-1673758910729-2ba616478afa?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGphY2tldCUyMGZlbWFsZSUyMG1vZGVsfGVufDB8fDB8fHww",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "White fashion hoodie",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "\$ 200.00",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Collection",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Show all",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9b9b9b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            ClipRRect(
              child: Image.asset(
                width: double.infinity,
                'assets/images/slimBeauty.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/fabulous.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  height: h * 0.28,
                  width: w * 0.44,

                  'assets/images/officeLIfe.png',
                ),
                Image.asset(
                  height: h * 0.28,
                  width: w * 0.44,

                  'assets/images/elegant.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

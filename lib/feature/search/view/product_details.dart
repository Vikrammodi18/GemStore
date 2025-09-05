import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/customWidget/custom_app_bar.dart';
import 'package:gem_store/feature/search/controller/product_details_controller.dart';
import 'package:gem_store/feature/search/viewmodel/product_details_provider.dart';
import 'package:gem_store/feature/search/widget/custom_select_color.dart';
import 'package:gem_store/feature/search/widget/custrom_select_size.dart';

class ProductDetails extends ConsumerStatefulWidget {
  const ProductDetails({super.key});

  @override
  ConsumerState<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends ConsumerState<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final productDetails = ref.watch(productDetailsProvider);
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(titleText: "", context: context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              productDetails.imgUrl,
              height: h * 0.5,
              width: w,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productDetails.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(5, (value) {
                              return Icon(
                                value < productDetails.avgRating
                                    ? Icons.star_rounded
                                    : Icons.star_outline_rounded,
                                color: Color(0xFF508A7B),
                              );
                            }),
                          ),
                        ],
                      ),
                      Text(
                        "\$ ${productDetails.price}",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Color",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff777E90),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Consumer(
                            builder: (context, ref, child) {
                              final colorState = ref.watch(colorProvider);
                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomSelectColor(
                                    color: Colors.yellow,
                                    isActive: colorState == SelectColor.yellow
                                        ? true
                                        : false,
                                    onTap: () {
                                      ref.read(colorProvider.notifier).state =
                                          SelectColor.yellow;
                                    },
                                  ),
                                  SizedBox(width: 2),
                                  CustomSelectColor(
                                    color: Colors.red,
                                    isActive: colorState == SelectColor.red
                                        ? true
                                        : false,
                                    onTap: () {
                                      ref.read(colorProvider.notifier).state =
                                          SelectColor.red;
                                    },
                                  ),
                                  SizedBox(width: 2),
                                  CustomSelectColor(
                                    color: Colors.black,
                                    isActive: colorState == SelectColor.black
                                        ? true
                                        : false,
                                    onTap: () {
                                      ref.read(colorProvider.notifier).state =
                                          SelectColor.black;
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff777E90),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Consumer(
                            builder: (context, ref, child) {
                              final selectedSize = ref.watch(sizeProvider);
                              return Row(
                                children: [
                                  CustromSelectSize(
                                    text: "S",
                                    isActive: selectedSize == SelectSize.Small,
                                    onTap: () {
                                      ref.read(sizeProvider.notifier).state =
                                          SelectSize.Small;
                                    },
                                  ),
                                  SizedBox(width: 5),
                                  CustromSelectSize(
                                    text: "M",
                                    isActive: selectedSize == SelectSize.medium,
                                    onTap: () {
                                      ref.read(sizeProvider.notifier).state =
                                          SelectSize.medium;
                                    },
                                  ),
                                  SizedBox(width: 5),
                                  CustromSelectSize(
                                    text: "L",
                                    isActive: selectedSize == SelectSize.large,
                                    onTap: () {
                                      ref.read(sizeProvider.notifier).state =
                                          SelectSize.large;
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ExpansionTile(
                    maintainState: false,
                    iconColor: Colors.black,
                    
                    tilePadding: EdgeInsets.all(0),
                    title: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    children: [
                      Text(
                        productDetails.description,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    maintainState: true,
                    iconColor: Colors.black,
                    tilePadding: EdgeInsets.all(0),
                    collapsedIconColor: Colors.black,
                    title: Text("Reviews"),
                    children: [Text("reviews reviews reviews")],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

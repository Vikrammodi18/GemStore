import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/customWidget/custom_app_bar.dart';
import 'package:gem_store/feature/search/viewmodel/product_details_provider.dart';

class ProductDetails extends ConsumerStatefulWidget {
  const ProductDetails({super.key});

  @override
  ConsumerState<ProductDetails> createState() => _ProductDetailsState();
}

enum color { red, black, green }

class _ProductDetailsState extends ConsumerState<ProductDetails> {
  color? selectedColor = color.red;
  @override
  Widget build(BuildContext context) {
    final productDetails = ref.watch(productDetailsProvider);
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(titleText: "", context: context),
      body: Column(
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
                              color: Color(0xff508A7B),
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
                  children: [
                    Column(
                      children: [
                        Text("Color"),
                        Row(
                          
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

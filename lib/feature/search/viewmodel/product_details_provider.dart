import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/feature/model/product_details.dart';


final productDetailsProvider = Provider<ProductDetails>(
  (ref) => productdetails,
);

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/feature/model/searched_product.dart';

final recentSearchProvider = StateNotifierProvider(
  (ref) => RecentSearchNotifier(),
);

class RecentSearchNotifier extends StateNotifier<Set<String>> {
  RecentSearchNotifier() : super({"jeans", "dress", "saree"});

  void addRecentSearch(String searchedText) {
    state = {...state, searchedText};
  }

  void removeRecentSearch(String searchedText) {
    state = {...state}..remove(searchedText);
  }

  void deleteRecentHistory() {
    state = {};
  }
}

final searchedProvider = Provider<List<SearchedProduct>>((ref)=> womenDresses);
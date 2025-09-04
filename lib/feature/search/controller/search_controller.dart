import 'package:flutter_riverpod/flutter_riverpod.dart';

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

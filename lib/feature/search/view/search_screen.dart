import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gem_store/customWidget/custom_app_bar.dart';
import 'package:gem_store/feature/search/controller/search_controller.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleText: "", context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Material(
                    color: Colors.white,
                    elevation: 1,
                    borderRadius: BorderRadius.circular(20),
                    child: Form(
                      key: _formkey,
                      child: TextFormField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),

                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Color(0xffBEBFC4),
                          ),
                          hint: Text(
                            "Search",
                            style: TextStyle(
                              color: Color(0xff777E90),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        onFieldSubmitted: (value) {
                          String searchItem = _searchController.text;
                          ref
                              .read(recentSearchProvider.notifier)
                              .addRecentSearch(searchItem);
                          _searchController.text = "";
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Material(
                  elevation: 1,
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.menu, color: Color(0xff777E90)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Search",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 68, 65, 63),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    ref
                        .read(recentSearchProvider.notifier)
                        .deleteRecentHistory();
                  },
                  icon: Icon(
                    Icons.delete_outline_rounded,
                    color: Color(0xff33302E),
                  ),
                ),
              ],
            ),
            Consumer(
              builder: (context, ref, child) {
                final recentHistoryList = ref.watch(recentSearchProvider);
                return Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 10,
                  spacing: 20,
                  children: recentHistoryList.map((element) {
                    return SizedBox(
                      height: 50,

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(element),
                          IconButton(
                            onPressed: () {
                              ref
                                  .read(recentSearchProvider.notifier)
                                  .removeRecentSearch(element);
                            },
                            icon: Icon(Icons.close, size: 18),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

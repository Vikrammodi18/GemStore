import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Material(
                    elevation: 4,
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
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        final searchText = _searchController.text;
                        print(searchText);
                      }
                    },
                    child: Container(
                      height: 53,
                      width: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 248, 248, 248),
                      ),
                      child: Icon(Icons.menu, color: Color(0xff777E90)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

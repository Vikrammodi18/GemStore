import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 4,
                      shadowColor: Color(0xffFAFAFA),
                      child: TextFormField(
                        onTap: () {
                          context.go("/searchScreen");
                        },
                        readOnly: true,
                        style: TextStyle(color: Color(0xff777E90)),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 12,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hint: Text(
                            "Search",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff777E90),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Color(0xff777E90),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Material(
                    elevation: 4,
                    shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFAFAFA),
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Image.asset("assets/images/searchBanner1.png"),
              SizedBox(height: 20),
              Image.asset("assets/images/searchBanner2.png"),
              SizedBox(height: 20),
              Image.asset("assets/images/searchBanner3.png"),
              SizedBox(height: 20),
              Image.asset("assets/images/searchBanner4.png"),
            ],
          ),
        ),
      ),
    );
  }
}

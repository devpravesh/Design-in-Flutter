import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/Home/bottom_pages/Customers.dart';
import 'package:project/Home/bottom_pages/khata.dart';
import 'package:project/Home/bottom_pages/main_page.dart';
import 'package:project/Home/bottom_pages/oder.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int currentTab = 0;

  List<Widget> Screen = [
    const MainPage(),
    const Customers_Page(),
    const Khata_Page(),
    const Oder_page()
  ];

  Widget CurrentScreen = const MainPage();
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10.0,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: -08),
                ],
              ),
              child: SvgPicture.asset(
                'images/first.svg',
                // width: 2,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        leadingWidth: 35,
        actions: [
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: -08),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'images/Har.svg',
                  ),
                ),
              )),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: -08),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'images/bell.svg',
                  ),
                )),
          ),
          const SizedBox(
            width: 20,
          ),
          const CircleAvatar(
            child: Icon(Icons.person),
          )
          // Padding(
          //   padding: const EdgeInsets.only(right: 10),
          //   child: SvgPicture.asset(
          //     'images/profile.svg',
          //     height: 50,
          //   ),
          // ),
        ],
      ),
      body: PageStorage(
        child: CurrentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: const Color(0xFF2C3D63),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: Container(
          color: Colors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const MainPage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/Home.svg',
                      color: currentTab == 0
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: currentTab == 0
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const Customers_Page();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/Cust.svg',
                      color: currentTab == 1
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Customer",
                      style: TextStyle(
                        color: currentTab == 1
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const Khata_Page();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/Rs.svg',
                      color: currentTab == 2
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Khata",
                      style: TextStyle(
                        color: currentTab == 2
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const Oder_page();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/CA.svg',
                      color: currentTab == 3
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                        color: currentTab == 3
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/Colors/colors.dart';
import 'package:project/Home/bottom_pages/container_move/container.dart';
import 'package:project/Home/calender.dart';
import 'package:project/widgets/Big_text.dart';
import 'package:project/widgets/small_text.dart';
import 'package:intl/intl.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MMMM, dd y');
    final DateFormat formatter1 = DateFormat('LLL, y');
    final String formatted = formatter.format(now);
    final String formattedmonth = formatter1.format(now);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      BigText(text: 'Welcome,'),
                      Text(
                        ' Mypcot !!',
                        style: TextStyle(
                            color: Appcolor.color4,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SmallText(
                    text: 'here is dashboard.....',
                    size: 16,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            blurStyle: BlurStyle.outer,
                            spreadRadius: -08),
                      ],
                    ),
                    child: SvgPicture.asset(
                      'images/search.svg',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(child: ContainerPage()),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: formatted,
                    size: 12,
                    color: Color(0xff2c3d63),
                  ),
                  BigText(text: 'Today'),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: -08),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("TIMELINE"), Icon(Icons.arrow_drop_down)],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: -08),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'images/Group911.svg',
                    ),
                    Text(
                      formattedmonth.toUpperCase(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Calendar(),
          // SizedBox(
          //   height: 20,
          // ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(18),
            child: Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          BigText(text: 'New order Created'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SmallText(
                        text: 'New Order create with Order',
                        size: 16,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SmallText(
                        text: '09:00 AM',
                        color: Appcolor.color8,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.arrow_forward_rounded, color: Appcolor.color8)
                    ],
                  ),
                  SvgPicture.asset('images/orders.svg', height: 80),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

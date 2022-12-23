import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/Colors/colors.dart';
import 'package:project/widgets/Big_text.dart';
import 'package:project/widgets/small_text.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,

      child: CarouselSlider(
        items: [
          //1st Image of Slider
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Appcolor.color0,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('images/orders.svg',
                        height: MediaQuery.of(context).size.height * 0.12),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: Appcolor.color5,
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: BigText(
                            text: 'Orders',
                            color: Colors.white,
                            size: 14,
                          )),
                        )),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.7, -1.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Appcolor.color5,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    )),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.35,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        'You have 3 active',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        'Order from',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // color: Colors.red,
              ),
            ),
            const Align(alignment: Alignment(0.7, -0.3), child: CircleAvatar()),
            const Align(alignment: Alignment(0.5, -0.3), child: CircleAvatar()),
            const Align(alignment: Alignment(0.3, -0.3), child: CircleAvatar()),
            Align(
              alignment: const Alignment(0.6, 0.4),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '02',
                            style: TextStyle(fontSize: 18),
                          ),
                          SmallText(text: 'Pending')
                        ],
                      ),
                      BigText(
                        text: 'Order From',
                        size: 12,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Align(alignment: Alignment(0.4, 0.75), child: CircleAvatar()),
            const Align(alignment: Alignment(0.5, 0.75), child: CircleAvatar()),
          ]),

          //2nd Image of Slider

          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Appcolor.color1,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'images/TIme.svg',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Appcolor.color6,
                            borderRadius: BorderRadius.circular(24)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Subscription")),
                        )),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.6, -1.0),
              child: Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Appcolor.color6),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BigText(
                    text: '03 deliveries',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.7, 0.1),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          BigText(
                            text: '10',
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SmallText(text: 'Active')
                        ],
                      ),
                      BigText(
                        text: 'Subscription',
                        size: 12,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Align(alignment: Alignment(0.3, -0.4), child: CircleAvatar()),
            const Align(alignment: Alignment(0.5, -0.4), child: CircleAvatar()),
            const Align(alignment: Alignment(0.7, -0.4), child: CircleAvatar()),
            Align(
              alignment: const Alignment(0.8, 0.9),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          BigText(
                            text: '119',
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SmallText(text: 'Pending')
                        ],
                      ),
                      BigText(
                        text: 'Subscription',
                        size: 12,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),

          //3rd Image of Slider
          Stack(children: [
            Container(
              width: 700,
              decoration: BoxDecoration(
                color: Appcolor.color2,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          'images/customers.svg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Appcolor.color7,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: BigText(
                              text: 'View Customers',
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.7, -1.0),
              child: Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolor.color7,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BigText(
                        text: '15 ',
                        color: Colors.white,
                      ),
                      SmallText(text: 'New customers')
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.9, 0.1),
              child: Container(
                width: 100,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "1.8%",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
            const Align(alignment: Alignment(0.3, -0.4), child: CircleAvatar()),
            const Align(alignment: Alignment(0.5, -0.4), child: CircleAvatar()),
            const Align(alignment: Alignment(0.7, -0.4), child: CircleAvatar()),
            Align(
              alignment: const Alignment(0.5, 0.9),
              child: Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          BigText(
                            text: '10',
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SmallText(text: 'Active')
                        ],
                      ),
                      BigText(
                        text: 'Customers',
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Align(
                alignment: Alignment(0.7, 0.8),
                child: CircleAvatar(
                  radius: 15,
                )),
            const Align(
                alignment: Alignment(0.8, 0.8),
                child: CircleAvatar(
                  radius: 15,
                )),
            const Align(
                alignment: Alignment(0.9, 0.8),
                child: CircleAvatar(
                  radius: 15,
                )),
          ]),
        ],
        //Slider Container properties
        options: CarouselOptions(
          // height: 180.0,
          enlargeCenterPage: true,
          // autoPlay: true,
          disableCenter: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 1,
        ),
      ),
    );
  }
}

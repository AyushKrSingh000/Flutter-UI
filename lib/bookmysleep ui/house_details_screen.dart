import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/bookmysleep%20ui/widgets/house_info_box.dart';
import 'package:ui/bookmysleep%20ui/widgets/icon_box.dart';
import 'package:ui/constants.dart';

class HouseDetailScreen extends StatefulWidget {
  const HouseDetailScreen({super.key});

  @override
  State<HouseDetailScreen> createState() => _HouseDetailScreenState();
}

class _HouseDetailScreenState extends State<HouseDetailScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabcontoller = TabController(length: 4, vsync: this);
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        ),
        Image(
          width: MediaQuery.of(context).size.width,
          height: 270,
          image: const AssetImage('assets/images/storyimages/5.png'),
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 250,
          child: Container(
            // color: kWhiteColor,
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            height: 900,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: HouseInfoBox(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        IconBox(icon: CupertinoIcons.bed_double, num: 2),
                        const SizedBox(
                          width: 20,
                        ),
                        IconBox(icon: Icons.shower_outlined, num: 2),
                        const SizedBox(
                          width: 20,
                        ),
                        IconBox(icon: Icons.kitchen_rounded, num: 1),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        Divider(
                          height: 25,
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        TabBar(
                            unselectedLabelColor: kGreyColor,
                            labelColor: kPrimaryColor,
                            indicatorSize: TabBarIndicatorSize.label,
                            controller: tabcontoller,
                            indicatorColor: Colors.transparent,
                            isScrollable: false,
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 3),
                            automaticIndicatorColorAdjustment: true,
                            tabs: const [
                              Tab(
                                height: 20,
                                icon: Icon(
                                  Icons.info,
                                  size: 25,
                                ),
                              ),
                              Tab(
                                height: 20,
                                icon: Icon(
                                  CupertinoIcons.chat_bubble_2,
                                  size: 25,
                                ),
                              ),
                              Tab(
                                height: 20,
                                icon: Icon(
                                  CupertinoIcons.tag,
                                  size: 25,
                                ),
                              ),
                              Tab(
                                height: 20,
                                icon: Icon(
                                  Icons.share_sharp,
                                  size: 25,
                                ),
                              ),
                            ]),
                        Divider(
                          height: 25,
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: TabBarView(controller: tabcontoller, children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description',
                                style: TextStyle(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla convallis est, sagittis accumsan metus egestas sit amet. Integer vitae leo nunc. Quisque egestas ante non urna luctus dapibus nec quis purus. Mauris sagittis eros velit, id consequat dui porttitor id. Suspendisse et efficitur diam. Phasellus posuere leo eget luctus vestibulum. Duis in dignissim ipsum.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: kTextColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text("Message"),
                      const Text('Offers'),
                      const Text('Share')
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 230,
          left: MediaQuery.of(context).size.width - 60,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const SizedBox(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Icon(
                      CupertinoIcons.heart,
                      color: Colors.red,
                      size: 23,
                    ),
                  ))),
        )
      ]),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ 2,00,000',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: kPrimaryColor,
                      minimumSize: const Size(140, 40)),
                  onPressed: () {},
                  child: Text(
                    'Reserve Now',
                    style: TextStyle(
                      color: kWhiteColor,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

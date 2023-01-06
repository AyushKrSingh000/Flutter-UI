import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ui/constants.dart';

// Here I used bottom navigation bar in stack insted of scaffold .If I use bottom navigation bar of scaffold then there is pixel flow error to show the image behind the bottom bar :)  .

//You can refer reference.dart for the same.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _pages = 0;
  @override
  Widget build(BuildContext context) {
    TabController tabcontoller = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 65,
          leading: ImageIcon(
            const AssetImage('assets/images/backbtn.png'),
            size: 30,
            color: kBlackColor, //Icon Size
          ),
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Center(
            child: Text(
              "shreshta12V",
              style: TextStyle(
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          actions: [
            PopupMenuButton<int>(
              icon: ImageIcon(
                const AssetImage('assets/images/more.png'),
                color: kBlackColor,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Archived",
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(
                    "Privacy",
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
              offset: const Offset(0, 50),
              color: Colors.white,
              elevation: 2,
            ),
          ]),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 290,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "45.8k",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: kGreyColor,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: kGreyColor,
                                  ),
                                  borderRadius: BorderRadius.circular(13),
                                  color: kGreyColor),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: const Image(
                                  image: AssetImage("assets/images/photo.jpg"),
                                  height: 75.49,
                                  width: 75.49,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                const Text(
                                  "2000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(
                                    color: kGreyColor,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Shreshtha Verma",
                          style: TextStyle(
                              color: Color.fromRGBO(61, 65, 75, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Experience Tourism.\nThese are as education in themselves",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "www.google.com",
                          style: TextStyle(
                              color: kBlackColor,
                              fontSize: 12.5,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kBtnColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Following",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              TabBar(
                  unselectedLabelColor: kTabBarUnselectedColor,
                  labelColor: kTabBarSelectedColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: tabcontoller,
                  indicatorColor: kTabBarSelectedColor,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 3),
                  automaticIndicatorColorAdjustment: true,
                  tabs: [
                    Tab(
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3.2,
                          child:
                              const Icon(CupertinoIcons.square_grid_2x2_fill)),
                    ),
                    Tab(
                      icon: SizedBox(
                        width: MediaQuery.of(context).size.width / 3.2,
                        child: const ImageIcon(
                          AssetImage("assets/images/byt.png"),
                          size: 24,
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3.2,
                        child: const Icon(CupertinoIcons.cube_fill),
                      ),
                    ),
                  ]),
              SizedBox(
                  height: MediaQuery.of(context).size.height - 440,
                  child: TabBarView(controller: tabcontoller, children: [
                    SingleChildScrollView(
                      child: SizedBox(
                          height: 130 * post.length / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: post.length,
                              itemBuilder: ((context, index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(13),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/storyimages/${post[index]}.png'),
                                    height: 130,
                                    width: 130,
                                  ),
                                );
                              }),
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 155,
                                      childAspectRatio: 1,
                                      crossAxisSpacing: 2,
                                      mainAxisSpacing: 5),
                            ),
                          )),
                    ),
                    const Center(child: Text("hello wolrd")),
                    const Center(child: Text("hello wolrd")),
                  ]))
            ],
          ),
          //Bottom Navigation Bar
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CurvedNavigationBar(
                  key: _bottomNavigationKey,
                  index: 0,
                  height: 60.0,
                  items: [
                    ImageIcon(
                      const AssetImage("assets/images/home.png"),
                      size: 45,
                      color: _pages == 0 ? kBlackColor : kNavIconColor,
                    ),
                    ImageIcon(
                      const AssetImage("assets/images/play.png"),
                      size: 45,
                      color: _pages == 1 ? kBlackColor : kNavIconColor,
                    ),
                    ImageIcon(
                      const AssetImage("assets/images/add.png"),
                      color: _pages == 2 ? kBlackColor : kNavIconColor,
                      size: 45,
                    ),
                    ImageIcon(
                      const AssetImage("assets/images/search.png"),
                      size: 45,
                      color: _pages == 3 ? kBlackColor : kNavIconColor,
                    ),
                    ImageIcon(
                      const AssetImage("assets/images/logo.png"),
                      color: _pages == 4 ? kBlackColor : kGreyColor,
                      size: 45,
                    )
                  ],
                  color: Colors.white,
                  buttonBackgroundColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  animationCurve: Curves.easeInOutCirc,
                  animationDuration: const Duration(milliseconds: 600),
                  onTap: (index) {
                    setState(() {
                      _pages = index;
                    });
                  },
                  letIndexChange: (index) => true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

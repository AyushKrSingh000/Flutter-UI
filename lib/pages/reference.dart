// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:ui/constants.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     TabController tabcontoller = TabController(length: 3, vsync: this);
//     return Scaffold(
//       appBar: AppBar(
//           toolbarHeight: 65,
//           leading: Icon(
//             CupertinoIcons.arrow_left,
//             size: 30,
//             color: kBlackColor, //Icon Size
//           ),
//           backgroundColor: kWhiteColor,
//           elevation: 0,
//           title: Center(
//             child: Text(
//               "shreshta12V",
//               style: TextStyle(color: kBlackColor),
//             ),
//           ),
//           actions: [
//             PopupMenuButton<int>(
//               icon: Icon(
//                 Icons.more_vert_outlined,
//                 color: kBlackColor,
//               ),
//               itemBuilder: (context) => [
//                 PopupMenuItem(
//                   value: 1,
//                   child: Text(
//                     "Settings",
//                     style: TextStyle(
//                       color: kBlackColor,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//                 PopupMenuItem(
//                   value: 2,
//                   child: Text(
//                     "Edit Profile",
//                     style: TextStyle(
//                       color: kBlackColor,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//                 PopupMenuItem(
//                   value: 3,
//                   child: Text(
//                     "HOME",
//                     style: TextStyle(
//                       color: kBlackColor,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//                 PopupMenuItem(
//                   value: 4,
//                   child: Text(
//                     "HOME",
//                     style: TextStyle(
//                       color: kBlackColor,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ],
//               offset: const Offset(0, 50),
//               color: Colors.white,
//               elevation: 2,
//             ),
//           ]),
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               SizedBox(
//                 height: 290,
//                 width: MediaQuery.of(context).size.width,
//                 child: Card(
//                   elevation: 5,
//                   margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13)),
//                   child: Padding(
//                     padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
//                     child: Column(
//                       children: [
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Column(
//                               children: [
//                                 const Text(
//                                   "45.8k",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16),
//                                 ),
//                                 const SizedBox(
//                                   height: 5,
//                                 ),
//                                 Text(
//                                   "Followers",
//                                   style: TextStyle(
//                                     color: kGreyColor,
//                                     fontSize: 12,
//                                   ),
//                                 )
//                               ],
//                             ),
//                             const Image(
//                               image: AssetImage("assets/images/profile.png"),
//                               height: 75.49,
//                               width: 75.49,
//                             ),
//                             Column(
//                               children: [
//                                 const Text(
//                                   "2000",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16),
//                                 ),
//                                 const SizedBox(
//                                   height: 5,
//                                 ),
//                                 Text(
//                                   "Following",
//                                   style: TextStyle(
//                                     color: kGreyColor,
//                                     fontSize: 12,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           "Shreshtha Verma",
//                           style: TextStyle(
//                               color: kBlackColor,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "Experience Tourism.\nThese are as education in themselves",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: kGreyColor,
//                             fontSize: 13,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 8,
//                         ),
//                         Text(
//                           "www.google.com",
//                           style: TextStyle(
//                               color: kBlackColor,
//                               fontSize: 12.5,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: kBtnColor,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             minimumSize:
//                                 Size(MediaQuery.of(context).size.width, 50),
//                           ),
//                           onPressed: () {},
//                           child: Text(
//                             "Following",
//                             style: TextStyle(
//                                 color: kBlackColor,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               TabBar(
//                   unselectedLabelColor: Colors.black,
//                   labelColor: Colors.black,
//                   indicatorSize: TabBarIndicatorSize.label,
//                   controller: tabcontoller,
//                   indicatorColor: Colors.black,
//                   isScrollable: true,
//                   labelPadding: const EdgeInsets.symmetric(horizontal: 3),
//                   automaticIndicatorColorAdjustment: true,
//                   tabs: [
//                     Tab(
//                       child: SizedBox(
//                         width: MediaQuery.of(context).size.width / 3.2,
//                         child: const Image(
//                           image: AssetImage('assets/images/box.png'),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: SizedBox(
//                         width: MediaQuery.of(context).size.width / 3.2,
//                         child: const Image(
//                           image: AssetImage('assets/images/byt.png'),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: SizedBox(
//                         width: MediaQuery.of(context).size.width / 3.2,
//                         child: const Image(
//                           image: AssetImage('assets/images/cube.png'),
//                         ),
//                       ),
//                     ),
//                   ]),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                   height: MediaQuery.of(context).size.height - 460,
//                   child: TabBarView(controller: tabcontoller, children: [
//                     SingleChildScrollView(
//                       child: SizedBox(
//                           height: 130 * post.length / 2.7,
//                           child: Padding(
//                             padding: const EdgeInsets.all(4.0),
//                             child: GridView.builder(
//                               physics: const NeverScrollableScrollPhysics(),
//                               itemCount: post.length,
//                               itemBuilder: ((context, index) {
//                                 return Image(
//                                   image: AssetImage(
//                                       'assets/images/${post[index]}.png'),
//                                   height: 130,
//                                   width: 130,
//                                 );
//                               }),
//                               gridDelegate:
//                                   const SliverGridDelegateWithMaxCrossAxisExtent(
//                                       maxCrossAxisExtent: 155,
//                                       childAspectRatio: 1,
//                                       crossAxisSpacing: 0,
//                                       mainAxisSpacing: 4),
//                             ),
//                           )),
//                     ),
//                     Center(child: Text("hello wolrd")),
//                     Center(child: Text("hello wolrd")),
//                   ]))
//             ],
//           ),
//           //Bottom Navigation Bar
//           SizedBox(
//             height: MediaQuery.of(context).size.height,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 CurvedNavigationBar(
//                   key: _bottomNavigationKey,
//                   index: 0,
//                   height: 60.0,
//                   items: [
//                     Icon(
//                       Icons.home_outlined,
//                       size: 40,
//                       color: kGreyColor,
//                     ),
//                     Icon(
//                       Icons.play_arrow_outlined,
//                       size: 40,
//                       color: kGreyColor,
//                     ),
//                     const Image(
//                       image: AssetImage("assets/images/add.png"),
//                       height: 40,
//                     ),
//                     Icon(
//                       Icons.search_sharp,
//                       size: 40,
//                       color: kGreyColor,
//                     ),
//                     const Image(
//                       image: AssetImage("assets/images/Group 1078.png"),
//                       height: 40,
//                     )
//                   ],
//                   color: Colors.white,
//                   buttonBackgroundColor: Colors.white,
//                   backgroundColor: Colors.transparent,
//                   animationCurve: Curves.easeInOutCirc,
//                   animationDuration: const Duration(milliseconds: 600),
//                   onTap: (index) {},
//                   letIndexChange: (index) => true,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

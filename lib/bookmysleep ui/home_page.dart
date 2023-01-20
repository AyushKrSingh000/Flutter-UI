// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/bookmysleep%20ui/house_box.dart';

import 'package:ui/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  int _bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    color: Colors.grey.shade300,
                    height: 40,
                    width: 40,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.bell_solid,
                      size: 30,
                      color: kTextColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.globe,
                      size: 30,
                      color: kTextColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Hello Sam",
              style: TextStyle(
                color: kTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Start Looking For Your House",
              style: TextStyle(
                color: kTextColor,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  onChanged: (value) {},
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'What are you looking for ?',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      suffixIcon: Icon(
                        Icons.tune,
                        color: kTextColor,
                        size: 30,
                      ),
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                        size: 30,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: _index == 0 ? kPrimaryColor : kWhiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width / 5.5,
                      height: _index == 0 ? 100 : 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.home,
                            size: 45,
                            color: _index == 0 ? kWhiteColor : kGreyColor,
                          ),
                          _index == 0
                              ? Text(
                                  "Home",
                                  style: TextStyle(
                                      color: kWhiteColor, fontSize: 15),
                                )
                              : const SizedBox(),
                        ],
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: _index == 1 ? kPrimaryColor : kWhiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width / 5.5,
                      height: _index == 1 ? 100 : 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.building_2_fill,
                            size: 45,
                            color: _index == 1 ? kWhiteColor : kGreyColor,
                          ),
                          _index == 1
                              ? Text(
                                  "Schools",
                                  style: TextStyle(
                                      color: kWhiteColor, fontSize: 15),
                                )
                              : const SizedBox(),
                        ],
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 2;
                  });
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: _index == 2 ? kPrimaryColor : kWhiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width / 5.5,
                      height: _index == 2 ? 100 : 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 40,
                            color: _index == 2 ? kWhiteColor : kGreyColor,
                          ),
                          _index == 2
                              ? Text(
                                  "Location",
                                  style: TextStyle(
                                      color: kWhiteColor, fontSize: 15),
                                )
                              : const SizedBox(),
                        ],
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 3;
                  });
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: _index == 3 ? kPrimaryColor : kWhiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width / 5.5,
                      height: _index == 3 ? 100 : 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.chat_bubble_2,
                            size: 50,
                            color: _index == 3 ? kWhiteColor : kGreyColor,
                          ),
                          _index == 3
                              ? Text(
                                  "Message",
                                  style: TextStyle(
                                      color: kWhiteColor, fontSize: 15),
                                )
                              : const SizedBox(),
                        ],
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SearchWidgets(index: _index),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
              size: 30,
            ),
            label: 'Liked',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_alt_circle,
              size: 30,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble_2,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _bottomIndex,
        unselectedItemColor: kGreyColor,
        selectedItemColor: kPrimaryColor,
        onTap: ((value) {
          setState(() {
            _bottomIndex = value;
          });
        }),
      ),
    );
  }
}

class SearchWidgets extends StatelessWidget {
  int index;
  SearchWidgets({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Expanded(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: HouseBox(),
              );
            }),
      );
    }
    if (index == 1) {
      return const Center(child: Text("Near Schools Section"));
    }
    if (index == 2) {
      return const Center(child: Text("Location Based Section"));
    } else {
      return const Center(child: Text("In App Chat"));
    }
  }
}

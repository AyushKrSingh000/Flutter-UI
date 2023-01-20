import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/constants.dart';

class HouseBox extends StatelessWidget {
  const HouseBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 240,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image(
                image: AssetImage('assets/images/storyimages/5.png'),
                width: MediaQuery.of(context).size.width,
                height: 180,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 130,
                child: Container(
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  width: MediaQuery.of(context).size.width - 38,
                  height: 170,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Special Housing Mix",
                          style: TextStyle(
                            color: kTextColor,
                            letterSpacing: 0.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 15,
                            ),
                            Text(
                              "Delhi, India",
                              style: TextStyle(
                                fontSize: 12,
                                color: kTextColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 28,
                                  color: kPrimaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 28,
                                  color: kPrimaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 28,
                                  color: kPrimaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 28,
                                  color: kPrimaryColor,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: kPrimaryColor,
                                  size: 28,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: kBlackColor,
                                  size: 18,
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  CupertinoIcons.chat_bubble,
                                  color: kBlackColor,
                                  size: 18,
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: MediaQuery.of(context).size.width - 100,
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/bookmysleep%20ui/widgets/house_info_box.dart';
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
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: HouseInfoBox(),
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

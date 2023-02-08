import 'package:assessment_test/screens/components/expand_bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
import '../utils/string.dart';
import 'components/media_header.dart';

class MediaPlayer extends StatelessWidget {
  const MediaPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MediaHeader(),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(reasons, style: bodyStyle3),
                              Text(
                                stayInspired,
                                style: TextStyle(
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    height: 1.5,
                                    color: kGray2),
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("assets/images/speaker.svg"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      SvgPicture.asset("assets/images/progressbar.svg"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("1:53", style: bodyStyle),
                          Text("-1:53", style: bodyStyle)
                        ],
                      ),
                      const SizedBox(height: 15),
                      SvgPicture.asset("assets/images/media_control.svg"),
                      const SizedBox(height: 45)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpandBottom(),
              ))
        ],
        ),
      ),
    );
  }
}

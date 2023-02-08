import 'package:assessment_test/model/QuickAction.dart';
import 'package:assessment_test/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommunityDisplay extends StatelessWidget {
  CommunityService communityService;

  CommunityDisplay({Key? key, required this.communityService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(flex: 1, child: communityService.displayImage),
                const SizedBox(
                  width: 14,
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        communityService.desc,
                        style: body2Style,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SvgPicture.asset("assets/images/likes_count.svg"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/likes_images.png")),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6))),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.0, vertical: 8.5),
                                child: Text(
                                  "Join",
                                  style: TextStyle(
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      height: 1.26,
                                      color: kScaffoldColor),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: kGray3,
          )
        ],
      ),
    );
  }
}

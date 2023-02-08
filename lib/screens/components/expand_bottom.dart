import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/string.dart';

class ExpandBottom extends StatelessWidget {
  const ExpandBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            transcript,
            style: TextStyle(
                fontFamily: "Mulish",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.36,
                color: kScaffoldColor),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: kScaffoldColor.withOpacity(.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    expand,
                    style: TextStyle(
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        height: 1.58,
                        color: kScaffoldColor),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                      "assets/images/external_link.svg")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

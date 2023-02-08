import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:assessment_test/utils/string.dart';

import '../../utils/constants.dart';

class CompleteRegContainer extends StatelessWidget {
  const CompleteRegContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      color: kBackground,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 5,
            child: Row(
              children: [
                Flexible(flex: 1, child: SvgPicture.asset("assets/images/warning.svg")),
                const SizedBox(width: 12),
                const Flexible(
                  flex: 4,
                  child: Text(
                    completeReg,
                    style: bodyStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          Flexible(flex: 1,child: SvgPicture.asset("assets/images/arrow_back.svg")),
        ],
      ),
    );
  }
}

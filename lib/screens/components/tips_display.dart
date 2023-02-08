import 'package:assessment_test/model/QuickAction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/string.dart';

class TipsDisplay extends StatelessWidget {
  Tip tip;
  TipsDisplay({Key? key, required this.tip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Divider(
          thickness: 4,
          color: kGray,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tip.title, style: bodyStyle3,),
                  Text(tip.desc, style:const TextStyle(
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.5,
                      color: kGray2
                  )),
                ],
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/images/arrow_back.svg"))
            ],
          ),
        )
      ],
    );
  }
}

import 'package:assessment_test/model/QuickAction.dart';
import 'package:assessment_test/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuickActionDisplay extends StatelessWidget {
  final QuickAction quickAction;
  final void Function()? onPressed;

  const QuickActionDisplay(
      {Key? key,
      required this.quickAction,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 105,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: quickAction.bgColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: InkWell(
          onTap: onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(quickAction.title,
                          style: const TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            height: 1.26,
                            color: kScaffoldColor,
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        quickAction.description,
                        style: const TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 1.26,
                          color: kScaffoldColor,
                        ),
                      )
                    ],
                  )),
              Flexible(flex: 1, child: quickAction.icon)
            ],
          ),
        ),
      ),
    );
  }
}

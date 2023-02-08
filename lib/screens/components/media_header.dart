
import 'package:assessment_test/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'as svg;
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgProvider;

import '../../utils/string.dart';

class MediaHeader extends StatelessWidget {
  const MediaHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: const svgProvider.Svg("assets/images/background.svg",),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(kGray3.withOpacity(.2), BlendMode.dstATop))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down,size: 30,),
                          color: kBlack,
                        ),
                         const Text(
                          motivated,
                          style: TextStyle(
                              color: kBlack,
                              fontFamily: "Mulish",
                              fontSize: 18,
                              height: 1.26,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.file_upload_outlined,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          const SizedBox(height: 30,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset("assets/images/card.png"),
          )
        ],
      ),
    );
  }
}

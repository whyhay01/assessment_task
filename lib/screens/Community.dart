import 'package:assessment_test/model/dummyData.dart';
import 'package:assessment_test/screens/components/community_display.dart';
import 'package:assessment_test/utils/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        community,
                        style: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            height: 1.26,
                            color: kBlack),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search_sharp))
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(thickness: 1,color: kGray3,),
                Column(
                  children: communityServices
                      .map((communityService) =>
                          CommunityDisplay(communityService: communityService))
                      .toList(),
                ),
              ],
            )),
      ),
      backgroundColor: kScaffoldColor,
    );
  }
}

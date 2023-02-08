import 'package:assessment_test/model/dummyData.dart';
import 'package:assessment_test/screens/MediaPlayer.dart';
import 'package:assessment_test/screens/Resources.dart';
import 'package:assessment_test/screens/components/quick_action_display.dart';
import 'package:assessment_test/screens/components/tips_display.dart';
import 'package:assessment_test/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:assessment_test/utils/string.dart';
import 'package:assessment_test/screens/components/complete_reg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                              icon: SvgPicture.asset(
                                "assets/images/profile_top.svg",
                              ),
                              color: kBackground,
                            ),
                            const Text(
                              welcome,
                              style: TextStyle(
                                  color: kBlack,
                                  fontFamily: "Mulish",
                                  fontSize: 20,
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
                                Icons.mark_unread_chat_alt_outlined,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_none_outlined,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              const CompleteRegContainer(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  quickActions,
                  style: bodyStyle3,
                ),
              ),
              Column(
                children: quickActionsList
                    .map((quickAction) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          child: QuickActionDisplay(
                            quickAction: quickAction,
                            onPressed: () {
                              if (quickAction.id == 1) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                            const MediaPlayer()),
                                );
                              }
                            },
                          ),
                        ))
                    .toList(),
              ),
              Column(
                children: tipsList.map((tip) => TipsDisplay(tip: tip)).toList(),
              )
            ],
          ),
        ),
      ),
      backgroundColor: kScaffoldColor,
    );
  }
}

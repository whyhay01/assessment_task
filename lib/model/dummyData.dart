import 'package:assessment_test/utils/constants.dart';
import 'package:assessment_test/utils/string.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'QuickAction.dart';

List<QuickAction> quickActionsList = [
  QuickAction(
      id: 0,
      title: "Book a session",
      description: "Get prompt assistance from medical professionals.",
      icon: SvgPicture.asset("assets/images/doctor.svg"),
      bgColor: kOrange),
  QuickAction(
      id: 1,
      title: "Diary",
      description: "Listen to the highlight from your previous session",
      icon: SvgPicture.asset("assets/images/diary.svg"),
      bgColor: kRed),
  QuickAction(
      id: 2,
      title: "Virtual assistant",
      description:
          "Get easy access to converse with the assistant on how you feel.",
      icon: SvgPicture.asset("assets/images/headset.svg"),
      bgColor: kPurple),
];

List<Tip> tipsList = [
  Tip(title: upcomingSession, desc: ""),
  Tip(title: tipToStayHealthy, desc: getSimpleHealthTips)
];

List<CommunityService> communityServices = [
  CommunityService(
      displayImage: SvgPicture.asset("assets/images/use_drug_orange.svg"),
      desc: "Talks about treatment, Pathways"),
  CommunityService(
      displayImage: SvgPicture.asset("assets/images/use_drug_purple.svg"),
      desc: "How was your first session experience?"),
  CommunityService(
      displayImage: SvgPicture.asset("assets/images/use_drug_yellow.svg"),
      desc: "How to live with cancer and be mentally stable ."),
  CommunityService(
      displayImage: SvgPicture.asset("assets/images/therapy.svg"),
      desc: "Is reliance on drugs a good thing?"),
  CommunityService(
      displayImage: SvgPicture.asset("assets/images/therapy.svg"),
      desc: "Talks about treatment, Pathways"),
];

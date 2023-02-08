import 'package:flutter/cupertino.dart';

class QuickAction {
  final int id;
  late String title;
  late String description;
  late Widget icon;
  late Color bgColor;

  QuickAction(
      {required this.id,
      required this.title,
      required this.description,
      required this.icon,
      required this.bgColor});
}

class Tip {
  final String title;
  final String desc;

  Tip({required this.title, required this.desc});
}

class CommunityService {
  late Widget displayImage;
  late String desc;

  CommunityService({required this.displayImage, required this.desc});
}

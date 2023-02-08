import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Center(child: Text("Account"),)),
      backgroundColor: kScaffoldColor,
    );
  }
}

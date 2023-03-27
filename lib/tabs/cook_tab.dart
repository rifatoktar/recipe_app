import 'package:flutter/material.dart';

import '../theme/constants.dart';

class CookTab extends StatefulWidget {
  const CookTab({super.key});

  @override
  State<CookTab> createState() => _CookTabState();
}

class _CookTabState extends State<CookTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
          child: Center(
        child: Text(
          "Cook Tab",
          style: Constant.tabText,
        ),
      )),
    );
  }
}
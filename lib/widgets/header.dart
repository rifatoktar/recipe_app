import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foope/theme/constants.dart';

class Header extends StatelessWidget {
  final String header;
  final String count;
  final Color badgeColor;
  final Color badgeTextColor;
  final TextStyle badgeText;

  const Header({super.key, required this.header, required this.count, required this.badgeColor, required this.badgeTextColor, required this.badgeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        Text(
          header,
          style: Constant.header,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 20,
          width: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: badgeColor),
          child: Center(
              child: Text(
            count,
            style: badgeText,
          )),
        ),
        Spacer(),
        Container(
          height: 27,
          width: 76,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
              offset: Offset(0, 0),
            ),
          ], borderRadius: BorderRadius.circular(5), color: addButtonColor),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0, backgroundColor: Colors.transparent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/add.svg",
                  colorFilter: ColorFilter.mode(addColor, BlendMode.srcIn),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Add",
                  style: Constant.addText,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

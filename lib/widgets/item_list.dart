import 'package:flutter/material.dart';
import 'package:foope/theme/constants.dart';

class ListItem extends StatelessWidget {
  final String imageLink;
  final String itemName;
  final String quantity;
  final String expTime;
  final TextStyle expTimeCon;
  const ListItem(
      {super.key,
      required this.imageLink,
      required this.itemName,
      required this.quantity,
      required this.expTimeCon,
      required this.expTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
          color: Colors.white),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 0, backgroundColor: Colors.transparent),
        child: ListTile(
          horizontalTitleGap: 15,
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageLink))),
          ),
          title: Text(
            itemName,
            style: Constant.itemHeader,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                quantity,
                style: Constant.itemQuantity,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                expTime,
                style: expTimeCon,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

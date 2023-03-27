import 'package:flutter/material.dart';
import 'package:foope/theme/constants.dart';

import '../widgets/header.dart';
import '../widgets/item_list.dart';

class ListTab extends StatefulWidget {
  const ListTab({super.key});

  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Foope",
          style: Constant.mainHeader,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Evening John, what would you like to cook today...",
                style: Constant.mainWelcome,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Header(
              header: "Fridge",
              count: "12",
              badgeColor: fridgeBadgeColor,
              badgeText: Constant.fridgeBadgeText,
              badgeTextColor: fridgeBadgeColor,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  ListItem(
                    imageLink: 'assets/images/parsley.png',
                    itemName: 'Carrot',
                    quantity: '2 lbs',
                    expTime: 'Bought 2 day ago!',
                    expTimeCon: Constant.itemTimeNormal,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/lettuce.png',
                    itemName: 'Lettuce',
                    quantity: '1 pcs',
                    expTime: 'Bought 10 day ago!',
                    expTimeCon: Constant.itemTimeRed,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/pea.png',
                    itemName: 'Pea',
                    quantity: '1 lbs',
                    expTime: 'Bought 4 day ago!',
                    expTimeCon: Constant.itemTimeYellow,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/zucchini.png',
                    itemName: 'Zucchini',
                    quantity: '3 lbs',
                    expTime: 'Bought 5 day ago!',
                    expTimeCon: Constant.itemTimeRed,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Header(
              header: "Freezer",
              count: "10",
              badgeColor: freezerBadgeColor,
              badgeText: Constant.freezerBadgeText,
              badgeTextColor: fridgeBadgeColor,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  ListItem(
                    imageLink: 'assets/images/chicken.png',
                    itemName: 'Chicken',
                    quantity: '1 pcs',
                    expTime: 'Bought 2 day ago!',
                    expTimeCon: Constant.itemTimeNormal,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/fish.png',
                    itemName: 'Salmon',
                    quantity: '2 lbs',
                    expTime: 'Bought 10 day ago!',
                    expTimeCon: Constant.itemTimeRed,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/pizza.png',
                    itemName: 'Pizza',
                    quantity: '4 pcs',
                    expTime: 'Bought 3 day ago!',
                    expTimeCon: Constant.itemTimeYellow,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/ice-cream.png',
                    itemName: 'Ice cream',
                    quantity: '10 pcs',
                    expTime: 'Bought today',
                    expTimeCon: Constant.itemTimeNormal,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Header(
              header: "Drys",
              count: "8",
              badgeColor: drysBadgeColor,
              badgeText: Constant.drysBadgeText,
              badgeTextColor: fridgeBadgeColor,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  ListItem(
                    imageLink: 'assets/images/onion.png',
                    itemName: 'Onion',
                    quantity: '2 lbs',
                    expTime: 'Bought 1 day ago!',
                    expTimeCon: Constant.itemTimeNormal,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/potato.png',
                    itemName: 'Potato',
                    quantity: '2 lbs',
                    expTime: 'Bought 10 day ago!',
                    expTimeCon: Constant.itemTimeRed,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/pumpkin.png',
                    itemName: 'Pumpkin',
                    quantity: '1 pcs',
                    expTime: 'Bought today',
                    expTimeCon: Constant.itemTimeNormal,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListItem(
                    imageLink: 'assets/images/garlic.png',
                    itemName: 'Garlic',
                    quantity: '1 pcs',
                    expTime: 'Bought today',
                    expTimeCon: Constant.itemTimeNormal,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}

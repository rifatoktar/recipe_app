import 'package:flutter/material.dart';

import '../home.dart';
import '../theme/constants.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Container(
                height: 260,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/person.png")),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                height: 36,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Welcome to Foope",
                  style: Constant.introHeader,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "You can cook your \nmeal quickly",
                  style: Constant.introSecHeader,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: primaryColor),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "Continue",
                        style: Constant.introButtonText,
                      )),
                ),
              )
            ]),
      )),
    );
  }
}

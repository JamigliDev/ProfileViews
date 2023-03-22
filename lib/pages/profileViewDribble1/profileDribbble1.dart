import 'package:flutter/material.dart';
import 'package:profile_views/common_widgets/card_profile.dart';
import 'package:profile_views/common_widgets/info_profile.dart';
import 'package:profile_views/utils/constants.dart';

class ProfileDribbble1 extends StatefulWidget {
  const ProfileDribbble1({Key? key}) : super(key: key);

  @override
  _ProfileDribbble1State createState() => _ProfileDribbble1State();
}

class _ProfileDribbble1State extends State<ProfileDribbble1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // AppBar
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                        )),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  )
                ],
              ),
              separator20V,
              CircleAvatar(
                radius: 44.0,
                backgroundColor: Color(primary),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/avatar1.png"),
                ),
              ),
              separator20V,
              const Text(
                "Exodus Trivellan",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              separator15V,
              const Text(
                "Product Manager",
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              separator40V,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  InfoProfile(
                    title: "28",
                    subtitle: "Applied",
                  ),
                  InfoProfile(
                    title: "78",
                    subtitle: "Reviewed",
                  ),
                  InfoProfile(
                    title: "16",
                    subtitle: "Contacted",
                  )
                ],
              ),
              separator40V,
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Complete Profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              separator20V,
              Row(
                children: const [
                  CardProfile(
                      icon: Icon(Icons.book),
                      title: "Education",
                      subtitle: "03 Steps left",
                      color: cardGreen),
                  SizedBox(
                    width: 10.0,
                  ),
                  CardProfile(
                      icon: Icon(Icons.android),
                      title: "Professional",
                      subtitle: "03 Steps left",
                      color: cardPurple),
                ],
              ),
              separator40V,
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Account Setting",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 32.0,
                    )
                  ],
                ),
              ),
              Spacer(),
              // Get pro Banner :P
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 24.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(bgPro)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Get Pro!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0)),
                        separator10V,
                        Text("Buy pro account!",
                            style: TextStyle(fontSize: 16.0))
                      ],
                    ),
                    FilledButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(primary))),
                        onPressed: () {},
                        child: const Text(
                          "Buy now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

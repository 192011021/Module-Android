import 'package:blood_clg/user/about_us_screen.dart';
import 'package:blood_clg/user/become_donor_screen.dart';
import 'package:blood_clg/user/contact_page.dart';
import 'package:blood_clg/user/need_blood_screen.dart';
import 'package:blood_clg/user/why_dontate_blood.dart';
import 'package:flutter/material.dart';

import '../common.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> title = [
    "About Us",
    "Why Donate Blood",
    "Become a Donor",
    "Need Blood",
    "Content Us",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              child: Text(
                "All Categories",
                style: CommonStyles.redText20BoldW500(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 30),
                primary: false,
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  if(index == 0) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AboutUsScreen()));
                                  if(index == 1) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WhyDonateBloodScreen()));
                                  if(index == 2) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BecomeDonorScreen()));
                                  if(index == 3) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NeedBloodScreen()));
                                  if(index == 4) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ContactPage()));
                                },
                                child: Text(
                                  title[index],
                                  style: CommonStyles.black15(),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.double_arrow,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}

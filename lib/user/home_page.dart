import 'package:blood_clg/common.dart';
import 'package:blood_clg/user/blood.dart';
import 'package:blood_clg/user/blood_donor_screen.dart';
import 'package:blood_clg/user/blood_tips_screen.dart';
import 'package:blood_clg/user/filter_screen.dart';
import 'package:blood_clg/user/need_screen.dart';
import 'package:blood_clg/user/who_help_you_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> title = [
    "The Need for Blood",
    "Blood Tips",
    "Who You colud Help",
    "Blood Group",
    "Blood Donar List",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: CommonStyles.blackw54s20Thin(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FilterScreen()
            ));
          },
          icon: Icon(Icons.sort),
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
              child: Text("Blood Bank and Donation",
              style: CommonStyles.redText20BoldW500(),
              ),
            ),
            SizedBox(
              height: 30,
            ),


            ListView.builder(
shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 30

                ),
                primary: false,
                itemCount: title.length,
                itemBuilder: (context,index) {
                return Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)
                      ),
                      color: Colors.tealAccent,
                      child: Padding(
                        padding: EdgeInsets.symmetric(

                          horizontal: 20,
                          vertical: 10
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: (){
                               if(index == 0) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NeedBloodScreen()));
                               if(index == 1) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BloodTipsScreen()));
                               if(index == 2) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WhoCouldHelpScreen()));
                               if(index == 3) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BloodGroupScreen()));
                               if(index == 4) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BloodDonorScreen()));

                              },
                              child: Text(title[index],
                              style: CommonStyles.black15(),
                              ),
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.double_arrow,
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
              }
            ),


          ],
        ),
      ),
    );
  }
}

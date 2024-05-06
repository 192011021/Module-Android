import 'package:blood_clg/admin/dashboard_screen.dart';
import 'package:blood_clg/common.dart';
import 'package:blood_clg/user/become_donor_screen.dart';
import 'package:blood_clg/user/blood_donor_screen.dart';
import 'package:blood_clg/user/contact_page.dart';
import 'package:flutter/material.dart';


class AdminDashBoard extends StatefulWidget {
  const AdminDashBoard({super.key});

  @override
  State<AdminDashBoard> createState() => _AdminDashBoardState();
}

class _AdminDashBoardState extends State<AdminDashBoard> {
  List<String> title = [
    "DashBoard",
    "Add Donor",
    "Donor List",
    "Update Contanct Info",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Home",
          style: CommonStyles.blackw54s20Thin(),
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
              child: Text("DashBoard",
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
                        color: Colors.grey.shade300,
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
                                  if(index == 0) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DashBoardScreen()));
                                  if(index == 1) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BecomeDonorScreen()));
                                  if(index == 2) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BloodDonorScreen()));
                                  if(index == 3) Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ContactPage()));

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

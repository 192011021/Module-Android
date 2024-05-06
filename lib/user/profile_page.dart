import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle,
                        size: 30,
                        color: Colors.black,
                      )),
                  Text(
                    "Profile",
                    style: CommonStyles.blackText17BoldW500(),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 180,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  "assets/images/img_4.png",
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "First Name",
                    style: CommonStyles.black14(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    readOnly: true,
                    initialValue: "Tharoon",
                    style: CommonStyles.black12(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),


                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Last Name",
                    style: CommonStyles.black14(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    readOnly: true,

                      initialValue: "Ravichandran",
                    style: CommonStyles.black12(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),


                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "E mail Id",
                    style: CommonStyles.black14(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    readOnly: true,

                    initialValue: "tharoon@gmail.com",
                    style: CommonStyles.black12(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),




                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Mobile No",
                    style: CommonStyles.black14(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    readOnly: true,
                    initialValue: "+91 9876543213",
                    style: CommonStyles.black12(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),




                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Address",
                    style: CommonStyles.black14(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    readOnly: true,
                    initialValue: "ECR - Chennai 600028",
                    style: CommonStyles.black12(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

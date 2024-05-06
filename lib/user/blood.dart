import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class BloodGroupScreen extends StatefulWidget {
  const BloodGroupScreen({super.key});

  @override
  State<BloodGroupScreen> createState() => _BloodGroupScreenState();
}

class _BloodGroupScreenState extends State<BloodGroupScreen> {
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
        child: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(30),
                child: Text(
                  "Blood Groups",
                  style: CommonStyles.redText20BoldW500(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Blood group of any human being will mainly fall in any one of the following groups.",
                                    style: CommonStyles.black15(),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "* A positive or A negative",
                                    style: CommonStyles.black15(),
                                  ),
                                ),TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "* B positive or B negative",
                                    style: CommonStyles.black15(),
                                  ),
                                ),TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "* O positive or O negative",
                                    style: CommonStyles.black15(),
                                  ),
                                ),TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "* AB positive or AB negative",
                                    style: CommonStyles.black15(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset("assets/images/img.png")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

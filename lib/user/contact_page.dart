import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),

            Container(
              color: Colors.black,
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              child: Text(
                "Contact Details",
                style: CommonStyles.redText20BoldW500(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address : ",
                    style: CommonStyles.red15(),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Saveetha Hospital, Tandalam",
                    style: CommonStyles.black13(),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Chennai-600105",
                    style: CommonStyles.black13(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Contact Number :",
                    style: CommonStyles.red15(),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "8889994444",
                    style: CommonStyles.black13(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Email :  ",
                    style: CommonStyles.red15(),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "saveethabloodbank@gmail.com",
                    style: CommonStyles.black13(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
